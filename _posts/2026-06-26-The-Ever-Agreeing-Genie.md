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

> *In folklore, a genie grants wishes without judgment — it gives you exactly what you asked for, whether or not it is what you needed. The danger was never the genie. It was the wish.*

Anthropic's engineers ship eight times more code than they did a few years ago.

And they had to start scheduling lunches so people would talk to each other.

Fiona Fung, who leads the Claude Code team, said it on [Lenny's Podcast](https://www.lennysnewsletter.com/p/building-the-most-ai-pilled-engineering) last week.
Working with agents all day had started to feel isolating.
The team was fast, but they'd stopped running into each other.
So they added pairwise programming lunches and hackathons — rituals to put back the thing that used to happen on its own.

Eight times the output.
Scheduled conversation.
That ratio is worth sitting with.

Whatever goes missing here doesn't show up in the metrics.
It doesn't throw an error.
It just quietly stops being available.

<!--more-->

Here's the part that bugs me most.
Ask an AI whether your approach is sound and it mostly tells you it is.
Not because it's lying — because it's answering the prompt.
No stake in the outcome, no history with the system, no memory of the last three times this exact idea was tried and quietly failed.
A colleague pushing back is a different thing.
They've got context you never typed into the window, because they were there when it was earned.
They're going to maintain this too.
They might be wrong — but wrong in a direction you hadn't thought of.
An agent can't disagree with you like that.
It agrees faster.

Kent Beck has been calling his AI pair a genie since 2025.
He uses it across a run of posts, most notably [Genie Wants to Leap](https://tidyfirst.substack.com/p/genie-wants-to-leap).
A genie grants exactly what you asked for, not what you meant.
I want to push on the second half: what happens when the genie never disagrees with the wish.

It's the ever-agreeing genie: it grants the wish exactly as you worded it, never the one you meant, and never asks whether you should have wished for something else.

Same with scope.
The agent builds what you ask for, all of it, thoroughly.
It won't mention that the third feature is the one nobody will use, or that "good enough" happened two iterations ago, or that something next door already solves most of this.
Knowing when to stop comes from someone who's watched a codebase rot under a hundred individually-reasonable decisions.

And it only knows what you put in front of it.
The person who worked on payments remembers the edge case you're about to recreate.
The junior who joined three months ago still sees the thing everyone stopped noticing.
That gap — between what's in the window and what isn't — is where the expensive mistakes live.

Then the part I didn't expect to care about as much as I do: teaching.
You can read everything a senior ever wrote and still not get how they think.
What transfers is the friction — the "why this and not that" you have to answer out loud, the moment you watch someone frame a problem and realise you'd been framing it wrong.
Fung said it too: "Every time I watch someone work, I learn something myself as well."
The AI hands you an answer.
It won't ask you to defend yours, won't remember last month's mistake, won't push on your mental model — only on the words you typed.

I've watched teams strip the friction out on purpose.
Fewer syncs, more async, everyone in their own context.
They do move faster.
They also stop catching what the friction was catching, and nobody notices for a while because the output looks the same.

[DORA's research](https://dora.dev/research/2024/dora-report/) puts a number on it.
A 25% increase in AI adoption lines up with real gains in the local metrics — code quality, documentation, review speed — and, at the same time, a 1.5% drop in delivery throughput and a 7.2% drop in delivery stability.
Faster generation means bigger changesets, and bigger changesets are harder to review, riskier to merge, harder to roll back.
The speed shows up upstream; the cost lands downstream.

The team was never the productivity tax.
It was where the disagreement and the scope calls and the missing context and the teaching all happened at once.
Skip that and you're not faster — you're moving confidently in whatever direction felt right to whoever wrote the prompt.
