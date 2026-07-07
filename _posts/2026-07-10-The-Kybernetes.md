---
layout: post
title: "The Kybernetes"
tags:
- Agentic Systems
- Platform Engineering
- OpenTelemetry
- OpenFeature
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-10 09:00:00 +0200
---

> *The kybernetes was the helmsman who steered a Greek ship, reading the wind and working the steering-oar to hold a course. The word is the root of two others: govern, and cybernetics, the study of how systems steer themselves.*

[The Oikonomos](https://schrottner.at/2026/07/06/The-Oikonomos.html) ended with a shrug. Someone has to own the loop, I said, and left the how for later. Fair complaint if you actually run one of these things and want to know what "own" means in practice.

It means two things. Seeing what the loop is doing. And being able to change what it does without touching the code.

<!--more-->

Most teams get the first one wrong before they even try the second. They add logging after something breaks. A trace here, a dashboard there, built to explain a specific incident after the fact. That's not visibility. That's an autopsy.

[OpenTelemetry](https://opentelemetry.io/) does something different if you use it the way it's meant to be used. The loop reports on its own state as it runs - what it's calling, what it's costing, how long each step takes, where it's stuck. Not after. While it's happening.

Call it [proprioception](https://schrottner.at/2026/06/08/We-Dont-Build-Software-Anymore.html) if the biological framing helps. A body knows where its limbs are without looking. A loop instrumented properly knows its own state without someone digging through logs afterward. The difference between the two is the difference between noticing a problem and being able to prevent one.

Seeing isn't steering. That's the part most people stop at.

[OpenFeature](https://openfeature.dev/) is the other half. A flag decides which model handles a given ticket type, how many retries an agent gets before a human sees it, whether a particular team's loop runs a stricter review pass. Change the flag, and the behavior changes immediately. No redeploy, no waiting for the next release cycle.

That's the motor response. The nervous system reacting to what the senses just reported, without needing the whole organism rebuilt first.

Put them together and you get something more specific than "observability" and "feature flags." You get a control plane. The loop still runs on its own - picks up tickets, implements, reviews itself, cycles back. Nobody stands over it approving each step. But every override you'd want already has a hook. Slow it down. Redirect it. Shut a piece of it off. All without touching the thing that's actually running.

That's bounded autonomy, not supervised autonomy. The loop is trusted to run unattended, and trusted precisely because the mechanism to intervene already exists if it's ever needed.

None of this was built for AI cost control, or for agent loops at all. Both tools predate the current wave by years. Which is probably the tell that this isn't really a new problem. Distributed systems needed to see themselves and adjust themselves long before anyone asked an agent to write code. The agent loop just made the need obvious again.

A loop nobody can see and nobody can steer isn't an agent loop. It's a black box with a budget, and eventually a bad one.
