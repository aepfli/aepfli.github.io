---
layout: post
title: "The End of the Craftsman?"
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

I noticed something a few months ago.

I was talking less to my colleagues.

Not because anything was wrong.
I had a question, I described it to an AI, I got something useful back.
Why loop in a human if the loop is already closed?

It took a while to name what was actually happening.

<!--more-->

There's a version of the AI story where the interesting work disappears.

The agent implements.
The spec session produces the plan.
Humans review the output.
What's left?
Ticket hygiene and rubber stamping.
Engineering as a series of approvals.

I think that's wrong.
But I understand why it feels true.

Here's what I think is actually happening instead.

The agent produces the increment.
But the agent doesn't decide what the increment should move toward.
It doesn't know whether this library is the right bet for the next three years.
It doesn't know which of two implementation approaches leaves options open and which quietly closes them.
It doesn't know whether the architectural call made today creates a problem nobody will notice until the system is under load eighteen months from now.

That work — giving the project direction, validating trade-offs, deciding what the system becomes — isn't specable.
You can't write a ticket for it.
And it's not going away.

The craft didn't disappear.
It moved.

Direction is the word I keep coming back to.

The agent executes well.
It implements against a spec.
It generates options when you ask for them.
But it doesn't carry a point of view about where the system should go.
It doesn't have a stake in the decision.
It will implement the wrong architectural direction just as confidently as the right one, if that's what the spec says.

Someone has to hold the direction.
Someone has to know enough about the codebase's history, the team's constraints, and the product's trajectory to say: not that library, we've been down that road.
Not that pattern, it doesn't survive the load we're heading toward.
This approach now, that refactor later, in this order, for these reasons.

That's not a spec.
That's judgment.
And it's the part of engineering that the agent loop exposes rather than replaces.

A [piece I read recently](https://dev.to/jeelvankhede/most-engineers-use-ai-few-engineer-with-it-3pd) makes a related point.
Most engineers use AI, few engineer with it — the difference being whether you're consuming outputs or shaping the problem before any output exists.

That framing is right but I think it undersells what's actually hard.

Shaping the problem before the prompt is a skill.
But knowing what the system should become — which trade-offs are worth making, which implementation approach holds up over time, what the PoC needs to prove before you commit — that's a different kind of knowledge.
It's accumulated.
It comes from watching a system grow and break and get fixed over time.

You can't prompt your way into it.

We tend to confuse craftsmanship with implementation because implementation was where craftsmanship was expressed.
The code review, the refactor, the careful choice of abstraction.
But the craft was never the typing.
It was the judgment behind it.

The agent can type.
The judgment is still ours.

Which brings me back to what I noticed about myself.

I was validating with the AI because it was right there.
Faster.
Always available.
Never in a meeting.

But there are two different conversations hiding under "does this approach make sense."

One of them is: does this produce working code.
The AI is fine for that.

The other is: does this make sense given where we're going, what we've tried before, and what we're going to have to live with.
That conversation needs someone who knows the system, knows the team's history with this pattern, and has a stake in what gets built.

AI is quietly substituting for the second conversation while only actually covering the first.

And nobody notices for a while, because the outputs look the same.

This is also where the junior engineer question gets uncomfortable.

The traditional growth path ran through implementation.
You wrote code, made mistakes, got it reviewed, iterated.
That feedback loop built intuition over years.
It was slow and mostly accidental, but it worked.

If the agent writes the code, that path gets thin.
Juniors who go through it in isolation — prompting, reviewing output, prompting again — are getting answers without developing the ability to form the questions.
They're skipping the part where you learn to see the options before picking one.
Where you learn to hold a direction, not just execute against it.

That's a quiet problem.
And it deserves more than a paragraph here — so I'll come back to it properly in a later post.

The [Spec Session](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) helps with some of this.
It's a forcing function for the room.
Intent, edge cases, product thinking — those surface where the whole team can catch them.

But direction isn't a session.
It's more continuous than that.
Which library do we standardise on?
What does the test harness need to survive the next six months?
Is this the right moment for a PoC or are we using the PoC to avoid a decision?

That conversation has to be chosen.
It doesn't appear in the [loop](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) on its own.

So where is the fun part?

It's here.

Validating the trade-off between two implementation approaches that both work but have different costs at scale.
Choosing the library you're going to have to live with.
Running the PoC that answers the question nobody has written down yet.
Making the architectural call with three defensible answers, knowing you'll have to explain it to the team a year from now.

That work was always there.
It just used to share space with implementation.
Now it doesn't.

The agent handles the increment.
The direction the increments add up to — that's still ours.

The craft didn't disappear.

It just moved further left.
