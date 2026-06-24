---
layout: post
title: "The Ever-Agreeing Genie"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-06-26 09:00:00 +0200
---

Anthropic's engineers are shipping eight times more code than they were a few years ago.

And they had to schedule lunches so people would talk to each other.

Fiona Fung, who leads the Claude Code team, said it plainly on Lenny's Podcast last week.
Working with agents all day had started to feel isolating.
The team was moving fast.
They had stopped running into each other.
Anthropic's response was pairwise programming lunches and hackathons — deliberate rituals to restore the thing that used to happen by default.

Eight times the output.
Scheduled conversation.

That ratio is worth sitting with.

The thing that goes missing isn't visible in the metrics.
It doesn't produce an error.
It just quietly stops being available.

<!--more-->

**Weighted validation.**

When you ask an AI if your approach is sound, it will generally tell you it is.
Not because it's lying.
Because it's responding to what you gave it.
The model has no stake in the outcome.
No history with the system.
No memory of the last three times this approach was tried and failed.

When a colleague pushes back, something different is happening.
They have context you didn't give them — because they were there when it was acquired.
They have skin in the game — they're going to maintain this too.
They might be wrong.
But they might be wrong in a direction you hadn't considered.

That's not the same as AI agreement.
AI agreement is frictionless by design.
It tells you what a plausible response to your prompt looks like.
Weighted validation tells you what someone with standing thinks about your actual plan.

The difference is structural.
You can't prompt your way to it.

**Scope judgment.**

The agent will build what you tell it to build.
All of it.
Thoroughly.

It won't tell you that the third feature in the ticket is the one nobody will use.
It won't notice that "good enough" was reached two iterations ago.
It won't ask why you're building this when something adjacent already solves most of it.

Scope judgment is knowing when to stop.
When the return on effort has tipped.
When the spec is correct but the outcome isn't worth the cost.

AI optimises for the prompt.
The team optimises for the right outcome — or at least, it's supposed to.
That judgment requires someone with a view of the whole, not just the ticket in front of them.
It requires people who've seen the codebase accumulate debt from a hundred good decisions that turned out to be slightly wrong.

It doesn't come from the model.
It comes from the room.

**Unknown unknowns.**

The model can only respond to what you put in the context window.
What you forgot to include, it doesn't know about.
What you didn't know to ask, it can't surface.

The team surfaces what you didn't know to ask.
Not because they're smarter.
Because they see things from different angles.
Because the person who worked on the payments service remembers the edge case you're about to recreate.
Because the junior who onboarded three months ago still has the outsider perspective that makes the gap visible.

AI is excellent at what's inside the context.
It can't tell you what's missing from it.

That gap is exactly where the expensive mistakes live.

**Teaching.**

The transfer of judgment is not the transfer of information.
You can read every document a senior engineer wrote and not understand how they think.

The thing that transfers is the friction.
The moment when a senior says "why this approach and not that one" and you have to defend your reasoning out loud.
The moment when you watch someone frame a problem and realise you had been framing it wrong.

Fung put it well: "Every time I watch someone work, I learn something myself as well."
That's not a feature of pair programming.
That's a feature of being in the room with another person who does things differently than you do.

AI will give you an answer.
It won't ask you to justify yours.
It won't remember that you made this mistake last month.
It won't challenge your mental model — only the thing you typed.

The learning that compounds over a career isn't information transfer.
It's the slow accumulation of pushed-back-on decisions.
That requires someone on the other side of the table.

The friction is not the problem.

I've watched teams remove it deliberately — fewer syncs, more async, everyone in their own context with their own tools.
They move faster.
And they stop catching the things the friction was catching.

The team is not a productivity tax.
It's the mechanism through which weighted validation, scope judgment, unknown unknowns and teaching happen.

AI accelerates a lot.
It can't give you any of those four things.

Which means the team that skips them isn't moving faster.
It's moving confidently in whatever direction felt right to the person who wrote the prompt.

That's a different thing.
