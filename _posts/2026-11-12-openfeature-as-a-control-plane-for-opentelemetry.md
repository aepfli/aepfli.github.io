---
layout: post
title: "OpenFeature as a Control Plane for OpenTelemetry"
tags:
- OpenFeature
- OpenTelemetry
- Observability
author:
- Simon Schrottner
series: "Telemetry on Demand"
excerpt_separator: <!--more-->
date: 2026-11-12 18:00:00 -0700
---

Today, on the last day of [KubeCon + CloudNativeCon NA](https://events.linuxfoundation.org/kubecon-cloudnativecon-north-america/) in Salt Lake City, [Juliano Costa](https://jcosta.dev/talks/) and I gave a talk together.
I maintain OpenFeature, Juliano works on OpenTelemetry, and the idea was simple: each of us knows one project very well and pretends to know nothing about the other's.
Juliano claimed he wasn't pretending.

I want to write down what we showed while it's still fresh, and what we asked the room, because the asking was the actual point.

<!--more-->

## Where it started

I have contributed to the OpenTelemetry Demo before, mostly because it ships with flagd, which is the part of it I know best.
Run it for ten minutes and you have more spans than I have unread emails.
Load generator, health checks, the same catalog lookup over and over.
Somewhere in there is the one request that failed.

The usual answer is sampling.
Sampling lives in environment variables or in the collector config, and both mean a rollout.
So turning telemetry down means restarting things in production, and turning it up when something breaks means restarting them again, right when you least want to.

To me, that sounded a lot like a problem I already knew.
Changing application behavior at runtime, per service, per request, without a redeploy, is what feature flags are for.

## What we showed

The demo is two small services, `geocode` in Python and `weather` in Java, reading their telemetry settings from flagd through OpenFeature.
Python uses [otelfeature-instrument](https://github.com/OTelFeature/otelfeature-instrument), Java a [Java agent extension](https://github.com/OTelFeature/otelfeature-java-extension).

**Turning it off.**
I started with the most naive flag possible, `otelEnabled`.
Flip it, spans stop, and the trace view goes quiet.
It works, and it's useless, because now nobody sees anything.
Metrics keep flowing on purpose, and `OTEL_SDK_DISABLED` stays a hard floor no flag can override.

**Keeping the edges.**
Juliano took over with something every span already carries, its kind.
`SERVER` and `CLIENT` spans are where requests come in and calls go out, and that's where latency and errors live.
`INTERNAL` spans are plumbing, useful when debugging that one service and mostly noise otherwise.
A string flag, `telemetryLevel`, switches between `full` and `io`, and the traces stay connected, just shorter.

Measured at the service, in a single benchmark run:

| Service | Spans | Bytes on the wire |
| ------- | ----- | ----------------- |
| `geocode` (Python) | −66 % | −37 % |
| `weather` (Java) | −38 % | −25 % |

The difference between the two is the instrumentation, FastAPI creates internal spans by default and the Java agent only does when controller telemetry is switched on.
So how much this saves depends on how chatty a service is inside.
CPU and memory didn't move measurably at our load, so I won't claim them.

**Rules on semantic conventions.**
To be more precise than "drop everything internal", the flag needs to know which span it's looking at, and in OpenFeature that's the evaluation context.
So we asked what a span knows before it starts: its service name, its instrumentation scope, its kind, the URL path.
With that, a `recordSpan` flag drops health checks in `geocode` and JDBC spans in `weather` and leaves the rest alone.

The evaluation context turns out to be basically the resource attributes, and a provider looks a lot like an exporter.
We built the same thing twice, in two projects, under the same foundation.

Because these are semantic conventions, the rules work the same in every language.
Sampling became a number flag, `traceSampleRatio`, 10 % in production and everything in staging.
And when we broke `weather` on purpose, a targeting rule on its own error rate turned its sampling up, and back down once the errors stopped.
No script, no webhook, nobody flipping anything.

A rule can't target the response status code, though, because the decision happens when the span starts and the response doesn't exist yet.

## Why not the collector

Juliano played the OpenTelemetry person here, and he had a point.
The collector already filters and tail samples, and tail sampling even sees the whole trace.

But by then the application has created the span, serialized it, and sent it over the network, and the collector spends compute to throw it away.
The noise is born in the SDK, so I think that's where the decision belongs.
The collector stays as the safety net, and the SDK becomes the tap.

## What we asked

Honestly, I don't know yet where this belongs.
We have a working prototype, a specification draft, and a list of open questions, and none of them are ours to answer alone.

- Do the two communities want this at all?
- Is it a subproject of OpenFeature, of OpenTelemetry, a working group across both, or something of its own?
- Should flags like `otelEnabled`, `recordSpan` and `traceSampleRatio` become conventions every flag backend and every SDK agrees on?
- Should both specifications write down the contract between evaluation context and semantic conventions?

The demo is public and needs nothing beyond Docker.
Clone [OTelFeature/poc](https://github.com/OTelFeature/poc), run `docker compose up`, switch to the `02-quiet-noise` preset and watch the noisiest service calm down.

I think we are onto something here.
If you agree, or think we are wrong, open an issue on the [poc repository](https://github.com/OTelFeature/poc/issues) or find either of us.
I have already written down [where I think this goes next]({% post_url 2026-11-13-incidents-are-timeframes-not-timestamps %}), with agents turning the dial during an incident.

Come find us.
I'll explain flags, and Juliano will explain spans, which I still call "those little bars".
