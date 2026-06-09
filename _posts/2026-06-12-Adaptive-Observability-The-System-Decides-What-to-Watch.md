---
layout: post
title: "Adaptive Observability. The System Decides What to Watch."
tags:
- Observability
- OpenTelemetry
- OpenFeature
- Agentic Systems
author:
- Simon Schrottner
excerpt_separator: <!--more-->
date: 2026-06-12 09:00:00 +0200
---

We instrument everything and hope something useful comes out.

That's not a strategy.
That's noise management.

<!--more-->

The reaction path and the reasoning path are different problems.
The reasoning path needs breadth, history, correlation, anomaly detection, fleet-wide baselines.
That's where observability platforms earn their place.
But the reaction path is different.
Signal in, decision out.
Local, low-latency, near-source.
Asking one system to serve both is where the architecture gets muddy.

So what does a proper reaction path look like.

If you control the SDK, you control what gets emitted in the first place.
OpenFeature can gate what your SDK emits.
Evaluate a flag, and based on the result decide whether to emit a trace, increase log verbosity, enable a specific metric.
The evaluation context is built from OTel semantic conventions — service name, environment, deployment version.
The system already knows about itself.
You're just wiring that knowledge into the decision of what to observe next.

The system decides what to watch based on its own state.
Not a human configuring a sampling rule once and forgetting about it.
Not a dashboard someone checks during an incident.
The loop closes at the SDK level.

And it's cheaper.
You reduce noise at the source instead of paying to ingest and filter downstream.

The primitives are all there.
OTel for the signal.
OpenFeature for the control.
The Collector as the routing layer.
The wiring between them doesn't exist yet in any standardized form.

Maybe that's on us.
The maintainers, the spec writers, the standard builders.
Making that easier to do, and harder to get wrong, is probably the next thing to work on.

Funny enough, this is the same problem I wrote about earlier today.
[We don't build software anymore]({% post_url 2026-06-08-We-Dont-Build-Software-Anymore %}) — we grow it.
Turns out we are still figuring out how to grow the nervous system itself.
