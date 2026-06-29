---
layout: post
title: "The Trireme"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-02 09:00:00 +0200
---

> *A trireme was the warship that made Athens a power in the Mediterranean — not for its size, but for its structure. Three banks of oars, a hundred and seventy rowers, every bench pulling in time with every other. Take enough rowers out of one bank and the ship doesn't row slower. It stops being a trireme.*

There's a counterargument to this whole series that I keep hearing, and it's a good one.
One person plus a good agent can do the work of a small team.
The agent implements, you review, you ship.
So why the other five people?

<!--more-->

For a lot of work, that's just true.
A solo developer with a sharp agent will out-ship a small team that hasn't figured out how to use one.
I'm not going to pretend otherwise.

But run that way long enough and you hit a specific failure — and it isn't running out of hours.
It's that the only thing checking your work is a thing built to agree with you.
I went at this from the agent's side in [the ever-agreeing genie](https://schrottner.at/2026/06/26/The-Ever-Agreeing-Genie.html) — the model that grants the wish exactly as worded and never asks whether it was the right one.
The team's side is the same problem wearing different clothes.
The agent validates against your prompt, your prompt is your current understanding, and your current understanding has holes you can't see, because that's what a blind spot is.
Working solo, nothing in the loop ever touches them.

This is where the trireme comes in.
I described the [room](https://schrottner.at/2026/06/30/The-Agora.html) last time — who shows up, what happens in it.
What I didn't say is what the room minimally needs to actually work.
It's smaller than a team and bigger than one.
Three functions have to be present.

Someone has to bring the problem — know the system well enough to frame what's worth building and what isn't.
Someone has to challenge the framing — ask the "why this and not that," the "what happens when," the question the first person is too close to the problem to think of.
Someone has to hold the user, or the business — the thing the whole spec is ultimately for, which is rarely visible from inside the codebase.

Three functions, and they don't map to three job titles.
In a mature team they move around the room — the person who brings the problem today challenges someone else's framing tomorrow.
The agent is a fourth seat, not a replacement for any of the three.
It implements what the three produce.
It depends on all of them.

Now put "one person plus agents" against that.
One person is trying to hold all three functions at once — bring the problem, challenge their own framing, and represent the user, simultaneously, in their own head.
You can't challenge a framing you can't see past.
So the middle function quietly doesn't happen, and nobody's there to notice it didn't.
That's not a Spec Session.
It's narrating your own assumptions back to yourself and calling the agreement validation.

This is the real ceiling, and it has nothing to do with speed.
You can generate an enormous amount of output solo, fast, for weeks.
And somewhere in there you ship something that solved the wrong problem completely and confidently, with no one in the room who could have caught that it was the wrong problem.
Fast and wrong at the same time, and nothing in the loop tells you which one you are.

That's what a team is for.
It's the structure that keeps the ship pointed the right way — three banks of oars, pulling in time.
Take enough rowers out and it doesn't row slower.
It drifts.
