---
layout: post
title: "Incidents Are Timeframes, Not Timestamps"
tags:
- Braindump
- Observability
- OpenTelemetry
- OpenFeature
- Agentic Systems
author:
- Simon Schrottner
excerpt_separator: <!--more-->
date: 2026-11-13 08:00:00 +0100
---

*A braindump, and a theory I'm still testing. I'm writing it down to think it through, and I'd like to hear where it breaks.*

Most of us read telemetry as a snapshot.
An error fires, we open the trace, and we expect the whole story to be right there: the caller's span, the receiver's span, the internal spans in between.
One trace, one point in time.

I think that model is running out of road.
Systems change faster than we can decide up front what to record, and the thing reading our telemetry is increasingly not a human.
Incidents will look less like a timestamp and more like a timeframe: a few minutes in which the system turns up its own detail around the problem.

<!--more-->

## Why our traces were rich

Rich traces made sense.
Every call carried data from both sides, the sender and the receiver, so a human could open one trace and reason about it without hunting for context elsewhere.

The price was that the configuration was set in stone.
We decided up front what to record, shipped it with the deployment and lived with it.
Changing it meant a config change and a redeploy.
By the time a human noticed an incident, decided they needed more detail and rolled out the change, the interesting moment was usually over.

So we recorded everything, all the time, just in case.
The snapshot had to be complete because there was no second chance to look closer.

## What changes when telemetry is a flag

With OtelFeature, telemetry configuration is evaluated at runtime through OpenFeature instead of being baked into the deployment.
That changes what a sensible default looks like.

In normal operation, I mostly want to know how the system is connected: which services talk to which, and whether those calls succeed.
That's a lean overview.
The receiving-side and internal spans only become interesting when something goes wrong.

Because the flag is evaluated inside the application, the change can also be narrow.
You can turn up detail for one route, one tenant or one pod, using the same evaluation context you'd use for any other feature flag.

This is not tail sampling.
Tail sampling decides what to keep after every span has already been created and shipped to a collector.
Remote collector configuration (OpAMP, for example) can change the pipeline, but the collector only ever sees what the application sent.
A flag inside the application decides what gets created in the first place.

## Agents close the loop

A dynamic configuration is only useful if something reacts fast enough to use it.
Humans never did.
We noticed late, correlated by hand across dashboards and changed settings after the fact.

Agents work differently.
They can watch the RED signals (rate, errors, duration) continuously, spot a pattern in the time it takes a human to open a dashboard, and correlate spans across services at a speed no on-call engineer matches.
When an agent sees errors climb on a route, it can flip the flag that adds detail there, right away.

We focused on a single point in time because our information was predefined and correlating many spans was hard.
Agents remove both of those limits.

## The incident as a zoom

Put those together and an incident stops being one rich trace.
It becomes a sequence of traces that get richer over time.

1. **Baseline.** Lean spans that show how services connect and whether calls succeed.
2. **Detect.** An agent sees the RED signals move on one part of the system.
3. **Ramp up.** It turns up detail there: receiving and internal spans, more attributes, a higher sample rate.
4. **Hold.** Detail stays up while the errors continue and the agent, or a human, investigates.
5. **Decay.** Once the signals recover, detail steps back down to baseline on its own.

The first trace of an error is the least detailed one, and each trace after it shows more.
The investigation happens across the timeframe, not inside a single snapshot.

Most talk about dynamic telemetry stops at step 3.
The way back down matters just as much.
Without it, every incident leaves the system a little noisier than before.

## What we give up

The real cost: you won't have all the information on the first occurrence of an error.
The first trace is lean by design.

I think that's the right trade.
Hiccups stop hurting: a single blip doesn't need forensic detail, and if it never comes back, it never cost you anything.
And when an error does persist, the detail arrives within the timeframe of the incident, which is exactly when you need it.

Two gaps are worth closing, though.

- **The error that only happens once.** If it never recurs, you never zoom in. A small in-memory buffer of rich spans, kept locally and only exported when an error fires, works as a flight recorder for exactly this case.
- **Extra load on a struggling system.** Turning up detail during an incident adds work to a service that is already in trouble. The ramp-up has to respect that.

## Guardrails for an agent with a dial

Handing an agent control over telemetry volume needs a few rules.

- **Budgets.** A ceiling on how much extra detail one service, or the whole system, can produce at once.
- **Expiry.** Every increase comes with a time limit. If nobody renews it, it decays back to baseline.
- **An audit trail.** Every change to telemetry levels is a signal in its own right. OpenFeature hooks and provider events can record each evaluation and configuration change, so the incident timeline shows when the system zoomed in, on what, and why.
- **Metrics for the alarms.** If error rates are derived from sampled spans, raising the sample rate can look like more errors. The signals that trigger the zoom should come from metrics, which don't shift when trace sampling does.

## Paying attention to what matters

The obvious win is cost: less ingestion, less storage, less congestion in the pipeline.
The bigger win is attention.
Normal traffic produces lean, boring telemetry, and nobody needs to look at it.

When something does go wrong, the system zooms in on its own.
By the time a human looks, the timeframe already holds the detail they need.
We stop asking what one trace tells us and start asking what happened over the last few minutes.
