---
layout: post
title: "The Oikonomos"
question: "Who's stewarding the budget an agent loop spends?"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-06 09:00:00 +0200
---

> *In an ancient Greek household, the oikonomos was the steward: the one trusted to manage the estate's resources so the whole household prospered. The word is the root of economy, which began as the art of running a household well.*

Every engineer on your team has their own agent setup right now. Their own system prompts, tuned over weeks. Their own skills, written for their own habits. Their own idea of what a good spec looks like once it hits the agent.

Nobody asked them to build this. It happened the way local tooling always happens: one engineer solves a problem for themselves, and the solution stays theirs.

The difference is cost. A better linter config doesn't show up on an invoice. A better system prompt burns fewer tokens on every run, for the rest of that engineer's time on the team. Multiply that across a team, and the gap between the best-tuned loop and the worst one is real money, invisible on any dashboard anyone is looking at.

<!--more-->

We got disciplined about cloud spend years ago. Tagging, budgets, alerts, someone whose job is to notice when a service starts costing more than it should. Token spend is heading the same direction. Almost nobody has built the equivalent muscle yet.

Ask finance what agent token spend cost last quarter. Ask if it's trending up faster than delivery. Most companies can't answer either question, because the spend is scattered across however many engineers are running their own loops, however they each see fit.

That's not an efficiency problem first. It's a visibility problem. The team can't control what it can't see, and right now most organizations can't see any of it.

The knowledge problem is worse than the money problem.

An engineer figures out that a particular skill halves the tokens needed for a certain kind of task. That knowledge lives in one config, on one machine, and it dies there. Nobody reviews it. Nobody shares it. The next engineer solving the same problem starts from zero, burns the tokens the first one already learned not to burn.

This is the same silo that used to form around infrastructure knowledge, before we decided that knowledge [belonged in an API](https://schrottner.at/2026/07/04/The-Astrolabe.html) instead of in someone's head. The instinct to fix that was right the first time. It's still right here.

[Centralize the loop](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) and the economics change.

One team owns the skills, the MCPs, the prompt patterns feeding the agent. They improve it once, and the improvement reaches everyone running through it. They see spend per team, per project, per ticket type, because it's flowing through one place instead of a hundred individual setups. They tune for cost the same way they'd tune a shared service for latency.

This isn't a new platform team recreating the old bottleneck. Application logic still lives with the team that owns the product. What moves to a central point is the plumbing. The part that was never anyone's job to maintain, and shouldn't be.

How you actually see what the loop is doing, and steer it without redeploying anything, is a mechanism worth its own post. For now, the point is simpler: someone has to own it. A steward for the shared resource, minding it so the whole team runs well on it. An oikonomos.

Individual engineers optimizing their own setups is not the same thing as a company optimizing as a unit. One produces a handful of very efficient people. The other produces an organization that gets cheaper and better at this over time, whether or not any particular person stays.

That's the actual question underneath token efficiency. Not whether to spend less. Whether the company learns anything at all, or whether the learning stays wherever the engineer who found it happens to be sitting this quarter.
