---
layout: post
title: "The Reaction Path Doesn't Need a Dashboard"
tags:
- Observability
- OpenTelemetry
- Agentic Systems
- SaaS
author:
- Simon Schrottner
excerpt_separator: <!--more-->
date: 2026-06-10 09:00:00 +0200
---

Observability tooling was built for humans.
Dashboards, notebooks, query interfaces — they exist so an engineer can look at data and make a decision.
That's a valid use case.
Business reporting, capacity planning, post-mortems.
Fine.

<!--more-->

But that's not what agents need.

An agent doesn't need a pretty graph.
It needs data.
Clean, structured, semantic data it can reason over.
The entire visualization layer is overhead.
And if that data has to travel through a SaaS ingest pipeline, get stored, get indexed, and then get queried, you've added latency, cost, and distance between your system and the thing reacting to it.

The OTel Collector already does the hard work.
It filters.
It batches.
It samples.
It enriches.
It can route data directly to wherever it needs to go.
Including an agent.
No SaaS layer required for the reaction path.

SaaS observability isn't wrong.
For human-facing use cases it makes sense.
But for a reflex arc, you want the signal close to the muscle.

The counterargument is obvious.
Observability platforms already have the data, the context, the semantic layer.
Why not make them the agent's data layer too.
Some vendors are betting exactly on that.
And it's not a bad bet for certain use cases — investigation, root cause analysis, post-incident review.
Where you need breadth, history, and correlation across signals.

But that's still a human-paced workflow dressed up in agent clothing.
The reaction path is different.
It needs low latency, minimal hops, and no dependency on external ingest availability.
When your system is degrading is exactly when you don't want your response gated on a SaaS API call.

That is probably the bigger challenge for observability companies over the next year or two.
Not whether agents can reason over telemetry data.
But whether the reaction path still runs through them at all.
Human-facing use cases stay.
The reflex arc doesn't need the dashboard layer.
Pricing models built on ingest volume will feel that.
