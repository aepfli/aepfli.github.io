---
layout: post
title: "The End of the Craftsman?"
question: "Does craftsmanship still matter when agents write the code?"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-06-24 09:00:00 +0200
---

I noticed something a few months ago: I was talking to my colleagues less.

Nothing was wrong.
I'd have a question, describe it to an AI, get something useful back.
Why pull in a human when the loop already closed?
It took me a while to notice what that was costing.

<!--more-->

There's a version of the AI story where the interesting work just disappears.
The agent implements, the spec session produces the plan, humans review the output. And what's left is ticket hygiene and rubber-stamping.
I think that's wrong, but I get why it feels true.

Here's what I think actually happens.
The agent produces the increment, but it doesn't decide what the increment should move toward.
It doesn't know whether this library is the right bet for the next three years, or which of two approaches quietly closes doors you'll want open later, or whether today's architectural call becomes the thing that falls over under load eighteen months from now.
You can't write a ticket for that.
It's judgment, and the agent will implement the wrong direction just as confidently as the right one if that's what the spec says.

So someone still has to hold the direction. Someone who knows the codebase's history, the team's constraints, where the product is going.
Not that library, we've been down that road.
Not that pattern, it won't survive the load we're heading for.
This now, that refactor later, in this order, for these reasons.

There's a [piece I keep thinking about](https://dev.to/jeelvankhede/most-engineers-use-ai-few-engineer-with-it-3pd): most engineers use AI, few engineer with it. The difference being whether you consume outputs or shape the problem before any output exists.
That's right, but I think it undersells the hard part.
Shaping the problem before the prompt is a skill.
Knowing what the system should *become* (which trade-offs are worth it, which approach ages well, what a PoC actually needs to prove) is a different kind of knowledge.
It's accumulated.
It comes from watching a system grow and break and get fixed over years.
You can't prompt your way into it.

We confuse craftsmanship with implementation because implementation was where the craft showed up. The review, the refactor, the careful abstraction.
But the craft was never the typing.
The agent can type.
The judgment is still ours.

Which brings me back to talking to my colleagues less.
I was validating with the AI because it was right there. Fast, always available, never in a meeting.
But there are two different questions hiding under "does this approach make sense."
One is whether it produces working code; the AI is fine for that.
The other is whether it makes sense given where we're going, what we've already tried, and what we'll have to live with. And that one needs someone with history and a stake in the answer.
AI quietly stands in for the second while only really covering the first. Working code and well-aimed code look identical, so the substitution hides in plain sight.

It gets worse for juniors.
The old growth path ran straight through implementation. You wrote code, made mistakes, got reviewed, built intuition over years.
If the agent writes the code, that path thins out, and you get answers without ever learning to form the questions.
That deserves more than a paragraph, so I'll come back to it.

The [Spec Session](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) catches some of this. It's a forcing function for the room.
But direction isn't a session, it's continuous.
Which library do we standardise on?
What does the test harness need to survive the next six months?
Is this PoC answering a real question or helping us avoid a decision?
That conversation has to be chosen.
It doesn't show up in the [loop](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) on its own.

So where's the fun part?
Honestly, it's here.
Weighing two approaches that both work but cost differently at scale.
Picking the library you'll have to live with.
Running the PoC for the question nobody's written down yet.
Making the architectural call with three defensible answers, knowing you'll explain it to the team a year from now.
That work was always there. It just used to share space with implementation, and now it doesn't.

The agent handles the increment.
Where the increments add up to is still ours.
The craft didn't disappear.
It moved further left.
