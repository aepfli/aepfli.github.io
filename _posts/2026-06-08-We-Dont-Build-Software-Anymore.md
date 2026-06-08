---
layout: post
title: "We Don't Build Software Anymore"
tags:
- Agentic Systems
- OpenTelemetry
- OpenFeature
- Platform Engineering
- Observability
author:
- Simon Schrottner
excerpt_separator: <!--more-->
---

There is a lot of conversation happening right now about agentic systems.
How to build them.
How to trust them.
How to keep humans involved.
The "human in the loop" crowd wants approval gates.
The "human on the loop" crowd wants oversight without bottlenecks.

<!--more-->

I've been sitting with a different question.
What if the role isn't in the loop or on the loop, but on the system itself.
Designing the thing that decides.
Not intervening in decisions, but shaping the layer that makes them.

That framing leads somewhere interesting.

We grow software.
Poorly.
Slowly.
Mostly by accident.
Every pull request is a mutation.
Every deployment is a generation.
Every incident is selection pressure.
We've been running evolution for years without noticing.

Living organisms solved this differently.
They built nervous systems, layers that sense, layers that act, layers that maintain stability without conscious intervention.
Proprioception.
The organism's awareness of its own state.
Where its limbs are.
What's alive and what isn't.

Most modern systems don't have that.
They have dashboards.
They have flag states nobody queries.
They have business outcomes disconnected from the behaviors that caused them.

Mauricio Salatino [published something today](https://www.salaboy.com/2026/06/08/reacting-to-ai/) that I keep thinking about.
He calls for a "learning layer" on top of Kubernetes, one that records, synthesizes, and lets agents make grounded decisions.
He ends where I always end up: unification, specs, standards.
But he doesn't name what that layer is made of.

I think we already have the ingredients.

OpenTelemetry senses.
OpenFeature acts.
Something in between evaluates.
That's not a dashboard.
That's a reflex arc.
The organism responding to its own state without waiting for a human to read a chart.

The human isn't in the loop.
The human isn't on the loop.
The human designed the nervous system.
That's a different job.
And it requires different primitives.

We've been building them piece by piece without knowing it.
Observability.
Feature flags.
Platform engineering.
Each built for a specific problem.
Each quietly doing more than we designed it for.

They don't add up to something yet.
But I'd bet against that staying true.

And now vendors are naming it for us.
Proprietary agent control layers.
Closed nervous systems.
The metaphor is everywhere.
Most of them aren't building on open standards.

That gap is widening.

I have a talk about this.
Submitted.
Not yet scheduled.
But the idea needed to exist somewhere first.

This is the rough version.

> Typing code is no longer the defining skill, but software engineering isn't becoming unnecessary — the value moves up, from writing implementations to designing the systems that frame, decide, and regulate themselves.
