---
layout: post
title: "A Fool with a Tool is Still a Fool"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-06-20 09:00:00 +0200
---

> "A fool with a tool is still a fool." — often attributed to Grady Booch

I keep coming back to this quote when I watch teams adopt AI.

<!--more-->

In my [last post](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) I wrote about shifting the engineering process left: spec sessions, autonomous agents, humans reviewing output rather than writing it.
A few people asked the obvious follow-up: if an agent implements and an AI reviews, why do I need a team at all?

It's a fair question.
And I think the answer is in that quote.

The agent validates against your prompt.
That's it.
If your thinking is muddled, the output will be muddled. Just faster and at greater cost.
An agent doesn't tell you that you're solving the wrong problem.
It solves whatever problem you gave it, thoroughly and without complaint.

Most AI usage right now treats AI as a tool.
Which means the quality of the output is bounded by the quality of the thinking that went into the prompt.
A fool with a tool is still a fool.
The tool just makes the foolishness more expensive.

The team is the check on intent.
Not after the agent has burned three sprints on the wrong thing. Before it starts.

That's what mob planning actually is, when you think about it.
Not a meeting.
Not process overhead.
It's the place where bad ideas get caught before they get expensive.
Where someone asks "wait, why are we building this" before an agent runs with it for a week.

But there's something else happening in that room that I think gets underestimated.

It's where the learning happens.

Not just prompting.
System thinking.
Architectural patterns.
How to decompose a problem.
Why a certain approach fits this codebase and another doesn't.
How a senior frames a problem before an agent ever touches it. The mental model that makes the output actually good.

Right now that knowledge isn't transferring.
Everyone is heads-down with their own tools, developing their own habits in isolation.
Engineer A gets dramatically better output than engineer B.
Nobody knows why.
Prompting approaches are one small part of it. The bigger part is the system thinking underneath.
And that only surfaces if there's a room where people talk through problems together before they hand them to an agent.

That conversation only exists if there's a room to have it in.

AI is quietly pulling teams apart.
Everyone optimises their own workflow.
Everyone gets faster individually.
And the shared craft starts to disappear. The thing that used to live in code reviews, in pairing sessions, in hallway conversations about why the last approach didn't work.

The mob planning session gives it back.
It becomes the place where system design gets discussed, where architectural decisions get challenged before the agent runs with them, where a junior watches how a senior thinks through a problem and learns something they couldn't have learned from reading generated code.
Prompting is part of that.
But it's the smaller part.

The artifact changed.
The need for the room didn't.

I don't think teams are going away.
I think the ones that skip the room will produce faster, worse work, and won't understand why.

The ones that keep the room, and take it seriously as the place where thinking happens, are the ones who'll still know why their good output is good.
