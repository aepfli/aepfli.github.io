---
layout: post
title: "OpenFeature as a Control Plane for OpenTelemetry"
tags:
- OpenFeature
- OpenTelemetry
- Observability
author:
- Simon Schrottner
excerpt_separator: <!--more-->
date: 2026-11-12 08:00:00 -0700
---

Today, on the last day of [KubeCon + CloudNativeCon NA](https://events.linuxfoundation.org/kubecon-cloudnativecon-north-america/) in Salt Lake City, [Juliano Costa](https://jcosta.dev/talks/) and I are on stage with a talk about two standards that fix a problem neither can fix alone.
I maintain OpenFeature, Juliano works on OpenTelemetry, and for twenty-five minutes we each pretend to know nothing about the other's project.
Juliano says he isn't pretending.

This post is the written version, for everyone who wasn't in the room and for everyone who was and wants the links.

<!--more-->

## The wall of spans

Run the OpenTelemetry Demo for ten minutes and you have more spans than unread emails.
You can see the load generator, the health checks, and the same product catalog lookup eleven thousand times.
The one request that actually failed is in there somewhere, the way a car key is somewhere in a lake.

Every one of those spans is paid for three times, at ingest, in storage, and in the attention of whoever has to find the one that matters.
The usual answer is sampling, and sampling is configured through environment variables or collector config.
Both mean a rollout.
Turning telemetry down in production means restarting things in production, and turning it up when something breaks means restarting them again, at the worst possible moment.

Underneath that sits a bigger assumption.
We decide upfront which spans to emit and how much telemetry is worth collecting, and then production refuses to stay the way it was when we decided.
When everything is healthy, the detail is cost and noise, and when the incident comes, the data we need is the data we chose not to collect.
Observability is treated as a configuration problem, and it behaves like a control problem.

What we wanted was a way to change telemetry at runtime, per service, per request, without a redeploy, and ideally without a human deciding when.
I have spent years on a CNCF standard for changing application behavior at runtime.

## Three steps, one flag backend

The demo is two small services, `geocode` in Python and `weather` in Java, instrumented with OpenTelemetry and reading their telemetry settings from flagd through OpenFeature.
The Python side uses [otelfeature-instrument](https://github.com/OTelFeature/otelfeature-instrument), the Java side a [Java agent extension](https://github.com/OTelFeature/otelfeature-java-extension).

**Off.**
The simplest flag I could think of is a boolean, `otelEnabled`.
OpenTelemetry already has `OTEL_SDK_DISABLED`, but that one is static, and the flag flips at runtime.
Spans stop, metrics keep flowing on purpose, and the trace view goes perfectly quiet.
It is also completely useless, because now nobody can see anything.
Taking the batteries out of the smoke detector stops the beeping too.
`OTEL_SDK_DISABLED` stays a hard floor, so no flag can switch telemetry back on where an operator switched it off.

**Keep the edges.**
Juliano's step uses something every span already carries, its kind.
`SERVER` and `CLIENT` spans are the edges of a service, a request coming in and a call going out, and that is where latency and errors live.
`INTERNAL` spans are framework plumbing, controller spans, and helper methods, useful when debugging that one service and mostly noise otherwise.
A string flag, `telemetryLevel`, switches between `full` and `io`.
On `io` the traces stay connected, children attach to their real parent, and they just get shorter.

Measured at the service, in a single benchmark run:

| Service | Spans | Bytes on the wire |
| ------- | ----- | ----------------- |
| `geocode` (Python) | −66 % | −37 % |
| `weather` (Java) | −38 % | −25 % |

The gap between the two is the instrumentation.
FastAPI creates internal spans by default, while the Java agent only does when controller telemetry is turned on, which we did for the demo.
How much this saves depends entirely on how much internal detail a service produces.
In Python the span is never created, and in Java it is never batched, serialized, or sent.
CPU and memory are not measurably lower at the load we ran, so I am not claiming them.

**Write rules on semantic conventions.**
Cutting by kind is blunt, everything internal goes everywhere.
To be precise, the flag needs to know which span it is looking at, and in OpenFeature that is the evaluation context.
So we asked what a span knows before it starts.
Its service name, its instrumentation scope, its kind, the URL path if it is a request.
A `recordSpan` flag can then drop health checks in `geocode` (`service.name` is `geocode` and `url.path` is `/health`) and every JDBC span in `weather` (`otel.scope.name` is `io.opentelemetry.jdbc`), and leave everything else alone.

This is where Juliano and I looked at each other on stage.
The evaluation context is the resource attributes.
The provider is the exporter, the hook is the span processor.
We built the same thing twice, which is something the CNCF is very good at.

Because those names are semantic conventions, the same rules work in every SDK and every language.
Sampling becomes a number flag, `traceSampleRatio`, with production at 10 % and staging at everything, and `weather` boosted to half its traces when it deserves more attention.

There is one thing it can't do.
A rule can't target `http.response.status_code`, because the SDK decides when the span starts and the response doesn't exist yet.
So we let the error rate decide instead.
When `weather` starts failing half its requests, a targeting rule on the error rate the service already records turns its sampling up to everything, while `geocode` stays at 10 %.
When the errors stop, it drops back.
Nobody flips the flag, there is no script and no webhook.
Telemetry changes the flag, and the flag changes telemetry.

The services' own flag evaluations land on their spans too, so a failed `weather` trace shows which flag sent it down the failure path.
That holds for the applications' flags.
The extensions don't record their own sampling decisions yet, which is one of the open questions below.

## Why not the collector

The collector already has a filter processor and tail sampling, and tail sampling even sees the whole trace before it decides.
By the time data reaches the collector, though, the application has paid the CPU to create it, the network has paid to carry it, and the collector pays again to throw it away.
A very well-run landfill, in Juliano's words.

The collector treats the symptom.
The noise is born in the SDK, so that is where the decision belongs.
Tail sampling still matters when the decision needs the whole trace, and the collector could read the same flags, so the two work together, with the collector as the safety net and the SDK as the tap.

## What we are asking

OpenFeature and OpenTelemetry fit together without anyone inventing anything new, because the semantic conventions already are the evaluation context.
That makes me curious which other pairs of CNCF standards would fit the same way.

The demo is public and needs nothing beyond Docker.
Clone [OTelFeature/poc](https://github.com/OTelFeature/poc), run `docker compose up`, switch to the `02-quiet-noise` preset, and watch the noisiest service get quieter.

The bigger question is for both communities.
We have a working prototype, a specification draft, and a list of open questions, and the answers aren't ours to decide alone.
Adaptive observability could become an ecosystem effort, or it could stay a collection of vendor-specific solutions that each solve it slightly differently.

- Do we want this at all?
- Does it live as a subproject of OpenFeature, of OpenTelemetry, as a working group across both, or as its own thing?
- Should flags like `otelEnabled`, `recordSpan`, and `traceSampleRatio` become conventions, so every flag backend and every SDK agrees on them?
- Should both specifications write down the contract between evaluation context and semantic conventions?

I think we are onto something here.
If you think so too, or think we are wrong, open an issue on the [poc repository](https://github.com/OTelFeature/poc/issues) or find either of us, and let's start that discussion together.
I will explain flags, Juliano will explain spans, and I will keep calling them those little bars.
