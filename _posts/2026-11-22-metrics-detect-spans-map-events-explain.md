---
layout: post
title: "Metrics Detect, Spans Map, Events Explain"
tags:
- Braindump
- Observability
- OpenTelemetry
- OpenFeature
- Agentic Systems
author:
- Simon Schrottner
series: "Telemetry on Demand"
excerpt_separator: <!--more-->
date: 2026-11-22 08:00:00 +0100
---

*Another braindump, and still a theory. I'd like to hear where it breaks.*

Spans and traces are great, but I think we over-highlight them.

Traces are a debugging tool.
When an incident starts, what actually tells me something is wrong is a metric: error rate up, latency up, throughput down.
Most of the detail we pack into spans is noise until that metric fires.
We pay to create it, ship it and store it, and most of it is never read.

<!--more-->

In [my last post]({% post_url 2026-11-13-incidents-are-timeframes-not-timestamps %}), I argued that incidents should be read as a timeframe, with detail turned up while they happen.
Underneath that sits the question of which signal leads, and where the detail should live.

**New to OpenTelemetry?**
[OpenTelemetry](https://opentelemetry.io/docs/concepts/observability-primer/) (OTel) is the open standard for producing telemetry, the data a system emits about itself.
It has three main signals.
[Metrics](https://opentelemetry.io/docs/concepts/signals/metrics/) are measurements captured at runtime, like request counts or latency.
[Traces](https://opentelemetry.io/docs/concepts/signals/traces/) follow one request through the system and are made of spans, each one unit of work such as an HTTP call.
[Logs](https://opentelemetry.io/docs/concepts/signals/logs/) are timestamped records of something that happened.
[Context propagation](https://opentelemetry.io/docs/concepts/context-propagation/) passes IDs between services, so all three can be matched to each other.

## A hierarchy of signals

Today we mostly treat the signals as equals: three pillars, all collected all the time, all at full detail.
I'd rather give each one a job and an order:

1. **Metrics detect.** They're the primary driver. [RED metrics](https://grafana.com/blog/the-red-method-how-to-instrument-your-services/) (the rate of requests, how many fail, and how long they take) tell you that something is wrong and roughly where.
2. **Lean server spans map.** A server span is the span a service records when it receives a call. Kept lean, these spans show what calls what and whether it worked. They're the skeleton of the system.
3. **Events explain.** The detailed information lives in a separate stream of events, which you turn up during an investigation.
4. **Logs come last.** Logs that carry trace context are the deepest level of detail, for when you already know where to look.

Each step down adds detail and cost, and each step is only needed when the one above it points there.
Metrics and lean spans are always on.
Events and detailed logs step up on demand.

OTel [exemplars](https://opentelemetry.io/docs/specs/otel/metrics/) attach trace IDs to metric data points, so you can jump from a spike in a chart straight to the spans behind it.

## Events get their own stream

For a long time, detail had nowhere to go but the span.
OTel had two overlapping ways to record something that happened during a request: span events, attached to the span itself, and log-based events, emitted through the Logs API.

In March 2026 OpenTelemetry announced it is [deprecating the span events API](https://opentelemetry.io/blog/2026/deprecating-span-events/).
New code should write events as logs that are correlated with the current span.
Existing views that show events on spans keep working.

The project's reason is to remove duplication, but the effect is the split I'm after.
Events become their own stream.
You can turn that stream up or down without touching the spans, and because the events carry the same context, they still line up with the span they belong to, even when they're switched on halfway through an incident.

The span is the address.
The events are the detail you attach to it on demand.

## Lean is not empty

A lean span still needs enough to draw the map.
Route, status code and service identity stay on, because without them there's no skeleton.

You don't have to invent the line between "identifies the call" and "detail" yourself.
OTel's [semantic conventions](https://opentelemetry.io/docs/specs/semconv/general/attribute-requirement-level/), the shared names for telemetry attributes, already rank each attribute as required, recommended or opt-in.
Opt-in is meant for attributes that are expensive to collect or carry privacy risk.
That ranking is a ready-made ladder for what stays on and what steps up.

Errors stay on too.
They're rare, they're cheap, and they're usually what starts an investigation in the first place.

## What about the unknown unknowns?

The usual argument for rich traces is the unknown unknowns: the problems nobody thought to build a metric for.
If spans are lean, don't you lose those?

I don't think so.
Lean server spans are always on, so you still see every call, along fewer dimensions.
You can still spot something odd and narrow it down, as long as the dimensions where problems tend to hide stay on: tenant, build version, region.
And because lean spans are always on, they give you a steady baseline.
You compare the incident against a normal day on the same terms.

Lean signals help you find where to look, and rich signals help you understand what's going on there.

One gap remains.
When you turn detail up, it only exists from that moment on, so there's no normal day to compare it against.
A small, always-on sample of fully detailed traces closes that gap cheaply and gives the detailed level a baseline of its own.

## The case against this

The strongest counterargument comes from the "observability 2.0" camp.
As [Honeycomb puts it](https://www.honeycomb.io/blog/why-observability-2-0-gamechanger), observability 2.0 has one source of truth: wide, structured events from which every other kind of data can be derived.
Metrics become a view on the events, not a signal of their own.
[Charity Majors](https://charity.wtf/tag/observability-2-0) has argued this at length.

I don't think the two ideas fight as much as it seems.
Wide events are about where the data lives.
The hierarchy is about attention and cost: what is produced all the time, what is produced on demand, and what anyone looks at first.
Even teams that like wide events weigh them against cheap metrics.
SimpliSafe's [talk at ObservabilityCON 2025](https://grafana.com/events/obsessions/2025/boston/are-we-ready-for-observability-2-0-pragmatic-observability-at-simplisafe/) calls observability 2.0 a North Star rather than a silver bullet.

Two more objections need an answer:

- **RED metrics derived from spans.** Many teams derive their RED metrics from spans. If the spans step down, those metrics break. "Metrics first" has to mean metrics produced independently of how traces are sampled. Otherwise turning detail up looks like more errors.
- **Logs first.** In many organizations, logs come first today. Putting them last is about order: logs with trace context are most useful once metrics and spans have told you where to look.

## Minimum viable context

When you work with AI, you learn quickly that more context isn't better context, a lesson context engineering is built on.
You give the model the smallest set of information that lets it do the job, and you add more only when it needs it.

Observability is heading the same way, because the reader is changing.
An AI agent investigating an incident has a context window, just like an on-call engineer has limited attention.
Dump every span into it and the agent reasons over noise.
Vendors in the space are making the same point: [Mezmo argues](https://mezmo.com/blog/why-your-sre-agent-overpromises-and-underproduces-plus-how-to-fix-that) for curated, scoped context instead of raw log dumps for SRE agents.

The signal hierarchy is minimum viable context for telemetry.
Metrics and lean spans by default.
Events and logs when the question needs them.

## An open question: business analytics

There's one use of traces this model doesn't cover well.
I've seen teams build pipelines that turn spans and traces into business dashboards: conversions, funnels, feature usage.

I understand the need.
The data is already there, it's correlated, and it follows the user's path.
But it also feels like using the tool for something it wasn't built for.
Business questions are usually about specific funnels and experiments, tracked in a correlated way over time.
If traces get leaner, those dashboards lose their input.

Maybe other tools fit better.
Maybe we need a different kind of signal for funnels and conversions.
OpenFeature has a piece of this already: its [tracking API](https://openfeature.dev/docs/reference/concepts/tracking) ties business events to feature flag evaluations for experimentation.
Its [specification](https://openfeature.dev/specification/sections/tracking) is also explicit that it isn't trying to become an experimentation platform or cover every user-tracking use case.

I don't have a use case for this right now, so I'm not the right person to solve it.
But I think it's a good question for the community.
If you're turning traces into business dashboards today, I'd like to hear how, and what you'd want instead.

## Further reading

- [Deprecating Span Events API](https://opentelemetry.io/blog/2026/deprecating-span-events/), OpenTelemetry blog, March 2026
- [Attribute requirement levels](https://opentelemetry.io/docs/specs/semconv/general/attribute-requirement-level/), OpenTelemetry semantic conventions
- [Exemplars in the metrics spec](https://opentelemetry.io/docs/specs/otel/metrics/) and a hands-on [exemplars guide for .NET](https://opentelemetry.io/docs/languages/dotnet/metrics/exemplars/)
- [The RED Method: How to Instrument Your Services](https://grafana.com/blog/the-red-method-how-to-instrument-your-services/), Grafana Labs
- [Why Observability 2.0 is a game changer](https://www.honeycomb.io/blog/why-observability-2-0-gamechanger), Honeycomb
- [Is it already time to version observability?](https://www.usenix.org/conference/srecon24americas/presentation/majors-plenary), Charity Majors, SRECon24 Americas
- [Are we ready for observability 2.0? Pragmatic observability at SimpliSafe](https://grafana.com/events/obsessions/2025/boston/are-we-ready-for-observability-2-0-pragmatic-observability-at-simplisafe/), ObservabilityCON 2025
- [Why your SRE agent overpromises and underproduces](https://mezmo.com/blog/why-your-sre-agent-overpromises-and-underproduces-plus-how-to-fix-that), Mezmo
- [OpenFeature tracking](https://openfeature.dev/docs/reference/concepts/tracking) and [the tracking spec](https://openfeature.dev/specification/sections/tracking)
