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

> *The Library of Alexandria was the ancient world's greatest repository of knowledge — and its greatest single point of failure. It didn't burn in a single night. It declined across decades, through neglect, through the slow erosion of what it had been. By the time it was gone, almost no one had noticed it going.*

There's a pattern I've been watching for a while, and I don't think it's going well.

A junior engineer gets stuck.
In the old world they'd go find someone, explain the problem, and get interrupted halfway through with "wait — what are you actually trying to do?"
That interruption was half the lesson.
Now they go to Claude and the problem gets solved.
Sometimes the wrong problem.
But quickly, and with confidence.

<!--more-->

There's a name for this: the XY problem.
You have problem X, you decide the answer is Y, you go ask for help with Y, and nobody ever finds out about X.
AI doesn't ask what X was.
It solves Y, thoroughly, without hesitation — and now you've got a complete solution to the wrong problem and learned nothing about why it was wrong.

This isn't only a junior thing, but juniors are more exposed, because they haven't built the scar tissue yet to feel when the question itself is off.
That scar tissue used to come from someone saying "back up — why are you doing it that way?"
That's where the learning was.

There's a skill hiding in here that I think matters more and more.
I've started calling it minimum viable context: knowing what to put in front of an agent and what to leave out, how to describe the actual problem instead of the symptom.
Not a pile of facts — a frame.
Sounds simple.
It isn't.
It's the same skill as asking a senior a good question: you have to understand the problem well enough to strip the noise, which means knowing what the noise is.
And you mostly learn it by watching someone do it out loud — framing, throwing away the irrelevant parts, getting to the real question before touching a keyboard.
That's hard to pick up when everyone's head-down in their own AI session.

A colleague of mine, Kaushal, put it well: implementation was the medium knowledge travelled through.
Code reviews, pairing, debugging something together at 4pm — that's where you saw how a senior thinks.
Not what they think, but *how*.
AI didn't just take over the implementation.
It removed the medium.
The artifact changed, and everything that used to ride along with it went too.

The Spec Session has to carry some of that now.
Not all of it, but some — mob planning, whole team, before the agent runs, is one of the few places left where a junior watches a senior frame a problem: how they break it down, what they decide isn't worth specifying yet, what they ask when something doesn't fit.
XP knew this all along.
Pair programming was never only about catching bugs; it was knowledge transfer running quietly in the background of real work, and mob programming scaled it up.
Jens Knipper said it the other day — "XP is so underrated."
He's right.
We had the answer and stopped using it.

But the thing that worries me more than the juniors: seniors are doing it too.
Validating with AI instead of with each other, solving things in isolation, getting individually faster while the shared picture of the system quietly thins out.
Team knowledge used to build up by osmosis — reviews, hallway conversations, groaning together at the same architectural mistake for the third time.
That's how a team grew a shared sense of what "good" looked like.
It doesn't happen on its own anymore.
It has to be designed in.

I don't have a clean fix.
The Spec Session is part of it.
Deliberate sharing — pairing on the spec, rotating who leads the session, not just dropping tickets and letting agents run — is part of it.
But the first step is just noticing that the medium changed and nothing replaced it automatically.
If the only place your team still meets is the sprint review, the shared mental model is probably already thinner than you think.

The work goes faster.
The understanding of why it went that way is accumulating... where, exactly?
