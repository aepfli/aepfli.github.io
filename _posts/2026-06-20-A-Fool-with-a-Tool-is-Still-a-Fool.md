---
layout: post
title: "A Fool with a Tool is Still a Fool"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
excerpt_separator: <!--more-->
date: 2026-06-20 09:00:00 +0200
---

> "A fool with a tool is still a fool." — often attributed to Grady Booch

I keep coming back to this quote when I watch teams adopt AI.

<!--more-->

In my [last post](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) I wrote about shifting the engineering process left — spec sessions, autonomous agents, humans reviewing output rather than writing it.
A few people asked the obvious follow-up: if an agent implements and an AI reviews, why do I need a team at all?

It's a fair question.
And I think the answer is in that quote.

The agent validates against your prompt.
That's it.
If your thinking is muddled, the output will be muddled — just faster and at greater cost.
An agent doesn't tell you that you're solving the wrong problem.
It solves whatever problem you gave it, thoroughly and without complaint.

Most AI usage right now treats AI as a tool.
Which means the quality of the output is bounded by the quality of the thinking that went into the prompt.
A fool with a tool is still a fool.
The tool just makes the foolishness more expensive.

The team is the check on intent.
Not after the agent has burned three sprints on the wrong thing — before it starts.

That's what mob planning actually is, when you think about it.
Not a meeting.
Not process overhead.
It's the place where bad ideas get caught before they get expensive.
Where someone asks "wait, why are we building this" before an agent runs with it for a week.

But there's something else happening in that room that I think gets underestimated.

It's where the learning happens.

Right now a lot of teams are struggling with something quiet: prompting knowledge isn't being shared.
Engineer A gets dramatically better output than engineer B.
Nobody knows why.
Everyone is heads-down with their own tools, developing their own habits, and none of it transfers.

What does A do differently?
What system patterns is she applying?
What context is he giving the agent that makes the output actually usable?

That conversation only exists if there's a room to have it in.

AI is quietly doing something to teams.
Everyone optimises their own workflow.
Everyone gets faster individually.
And the shared craft — the thing that used to live in code reviews, in pairing sessions, in hallway conversations about why the last approach didn't work — starts to disappear.

The mob planning session gives it back.
It becomes the place where system design gets discussed, where prompting approaches get shared, where a junior watches how a senior frames a problem for an agent and learns something they couldn't have learned from reading the code.

The artifact changed.
The need for the room didn't.

I don't think teams are going away.
I think the ones that skip the room will produce faster, worse work — and won't understand why.

The ones that keep the room, and take it seriously as the place where thinking happens, will end up somewhere different.
