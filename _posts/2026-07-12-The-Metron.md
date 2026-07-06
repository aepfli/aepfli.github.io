---
layout: post
title: "The Metron"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-12 09:00:00 +0200
---

> *Metron was the Greek word for a measure: the standard you judge a thing against. It gives us metric, and metronome. Pick the wrong metron and everything you count against it comes out wrong, no matter how carefully you count.*

Ask most teams how they know AI adoption is working, and the answer is some version of: we're shipping more. More PRs, more tickets closed, more velocity on the board.

None of those numbers were ever measuring what people thought they were measuring. They were proxies, and bad ones, for whether the team was creating value. AI didn't break that. It just made the proxies lie louder.

<!--more-->

An agent can produce PRs faster than any team can review them. It can close tickets all day. None of that tells you whether the thing built was worth building, or whether it fixed the actual problem, or whether anyone downstream is better off. Burning tokens isn't the same thing as creating value. It just looks the same on a dashboard built to reward the first thing.

The [same DORA numbers](https://schrottner.at/2026/06/26/The-Ever-Agreeing-Genie.html) I pointed at earlier are blunt about it: individual output climbs while delivery throughput and stability drop. Same bottleneck, counted at [the wrong end](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html).

This is Theory of Constraints in one sentence: speeding up a step that wasn't the bottleneck doesn't speed up the system. It just piles more work in front of whatever the real bottleneck is.

Implementation used to be the constraint. Now it isn't. Review is. Coordination is. Making sure everyone agrees on what "done" even means is. Agents made the fast part faster and left the slow part exactly where it was, except now it's buried under more output arriving to be reviewed by fewer people who understand any of it.

Measuring individual speed after that shift is measuring the wrong clock. The team can be faster and worse off in the same quarter.

The instinct, when this gets noticed, is to add another skill to the agent. Automate the review step too. Automate the coordination. Whatever's slow, throw a capability at it.

That doesn't fix the process. It just moves the bottleneck one step further down and makes it arrive faster. The team is still broken, just broken at a higher velocity.

What actually needs measuring doesn't increment. Whether the problem the work existed for is gone. Whether the system got easier to change or harder. Whether anyone downstream is better off than before the tickets closed. None of that ticks up once a day on a board, which is exactly why teams reach for velocity instead. Not because it was ever the right measure. Because it was the easy one.

A proxy holds only as long as it tracks the thing it stands for. Agents didn't break that. They cut the thread between output and value and left the number climbing anyway. Measure that number harder and all you get is more confidence about less.
