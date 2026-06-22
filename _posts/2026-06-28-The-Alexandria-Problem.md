---
layout: post
title: "The Alexandria Problem"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-06-28 09:00:00 +0200
---

There's a pattern I've been watching for a while, and I don't think it's going well.

A junior engineer gets stuck.
In the old world, they'd go find someone.
Explain the problem.
Get interrupted.
"Wait — what are you actually trying to do?"
That question is half the lesson.

Now they go to Claude.
The problem gets solved.
Sometimes the wrong problem.
But quickly, and with confidence.

<!--more-->

There's a name for this in engineering: the XY problem.
You have problem X.
You think the solution is Y.
You come in asking for help with Y.
And nobody ever finds out what X was.

AI doesn't ask what X was.
It solves Y.
Thoroughly.
Without hesitation.
And now you have a very complete solution to the wrong problem, and you learned nothing about why it was the wrong problem.

This isn't a junior-only failure mode.
But juniors are more exposed to it, because they haven't built up enough scar tissue to know when they're asking the wrong question.
That scar tissue used to accumulate in human conversation.
"Wait, back up. Why are you doing it that way?"
That moment is where the learning was.

There's a related skill — one I think is going to matter more and more.

I've started calling it minimum viable context.
Knowing what to include when you talk to an agent.
What to leave out.
How to frame the actual problem rather than the surface symptom.
Not a list of facts.
A frame.

It sounds simple.
It isn't.
It's the same skill as asking a senior engineer a good question.
You have to understand your problem well enough to explain it without the noise.
You have to know what the noise is.

Juniors learn this by watching seniors do it.
Not by reading about it.
By sitting in a room where a senior is working through a problem out loud — framing it, shedding the irrelevant parts, arriving at the actual question before touching a keyboard.

That observation is harder to get in a world where everyone is head-down in their own AI session.

A colleague of mine — Kaushal — put it clearly.
Implementation was the medium through which knowledge transferred.
Code reviews.
Pairing.
Debugging something together at 4pm.
That's where you saw how a senior thinks.
Not what they think, but *how*.

AI didn't just replace the implementation.
It removed the medium.

The artifact changed, and with it the mechanism for everything that used to travel alongside the artifact.

The Spec Session has to carry some of that weight now.
Not all of it.
But some.

The spec session — mob planning, whole team, before the agent runs — is where a junior watches how a senior frames a problem.
Not the code.
The thinking before the code.
How they decompose it.
What they decide isn't worth specifying yet.
What question they ask when something doesn't fit.

XP already knew this.
Pair programming wasn't just about catching bugs.
It was a knowledge transfer mechanism, running continuously, in the background of real work.
Mob programming scaled it up.
Jens Knipper said it the other day: "XP is so underrated."
He's not wrong.
We had the answer.
We just stopped using it.

The Spec Session is what those practices look like when the primary artifact is a spec, not code.
Same logic.
Different room.

But here's the thing that worries me more than the juniors.

The juniors are the visible problem.
The invisible one is that seniors are doing it too.

Seniors are also validating ideas with AI instead of with each other.
Also solving problems in isolation.
Also getting faster individually while the shared mental model of the system gets thinner.

Team knowledge used to accumulate through osmosis.
Code reviews.
Hallway conversations.
Groaning together at the same architectural mistake for the third time.
That's how norms built.
That's how a team developed a shared sense of what good looked like.

That doesn't happen automatically anymore.
It has to be designed in.

The danger isn't that juniors stop learning.
It's that everyone starts learning alone.

I don't have a clean answer to the team knowledge problem.
The Spec Session is part of it.
Deliberate knowledge-sharing practices — pairing on spec work, rotating session leads, not just assigning tickets and letting agents run — are part of it.

But the first step is noticing that the medium changed.
And that nothing replaced it automatically.

If you're running a team right now and the only shared touchpoint is the sprint review, the shared mental model is probably already thinner than you think.

The work happens faster.
The understanding of why it happened that way is building up... where, exactly?
