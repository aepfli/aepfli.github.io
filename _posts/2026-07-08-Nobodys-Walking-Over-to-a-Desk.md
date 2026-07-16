---
layout: post
title: "Nobody's Walking Over to a Desk"
question: "What broke when walking over to ask became asking the agent?"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-08 09:00:00 +0200
---

> *The most important step in the old process was never written down: the confused developer getting up, walking across the room, and asking. It worked precisely because no one designed it.*

Ask what could go wrong with a [Spec Session](https://schrottner.at/2026/06/30/The-Agora.html) and the list comes fast. Sessions that run long and never converge, especially when everyone's trying hard to agree. The wrong people in the room, or the right people never told it was happening. A topic too big to spec in one sitting. A dominant voice drowning out the person who actually holds the knowledge.

All fair. All worth naming. None of them new.

<!--more-->

Scrum has been fighting every one of these for twenty years.
Refinement sessions that run long without a decision.
The invite-list problem: who gets pulled into planning and who doesn't.
INVEST criteria exist because "this story is too big" is one of the oldest complaints in the room.
Artificial harmony in a retro, where everyone nods because nobody wants to be the one who reopens the debate, is the same failure as a Spec Session converging too easily on a fake consensus.

None of this is a new failure mode invented by putting an agent on the other end of the spec. It's the same meeting, wearing a different name.

Here's what actually is different, and it's not on the list above.

When sprint planning produced a bad story (vague, wrong scope, built on a consensus that was never real), a human still had to implement it. And a confused human doing that has a habit the old model quietly relied on. They get stuck. They walk over to someone's desk. They ask "wait, did we mean this or that?"

That confusion was a safety net. Cheap, informal, and completely undocumented as a process, but it worked. It caught planning failures in week two, not in production. Late, but survivable.

An agent doesn't have that habit.
It either runs with its best interpretation of an ambiguous spec, or it stops.
Neither of those looks like walking over to a desk.
Nobody notices the ambiguity the way a confused human notices it, because noticing ambiguity and pausing to ask were never things the process built on purpose.
They were a side effect of the implementer being a person who got uncomfortable not understanding what they were building.

Take that person out of the loop and the side effect goes with them. The same bad story that used to get caught two days into a sprint now rides straight through to production, because the thing that used to catch it was never the process. It was the discomfort of a human who didn't want to guess.

The obvious objection: agents ask clarifying questions all the time now, that's half the marketing copy for every current tool.
True, and it doesn't touch the actual claim.
The agent asks the person who invoked it, inside that person's framing, at the moment of generation, before anything has been built, before the confusion has had a chance to turn into a specific question.
The walk to the desk went somewhere else entirely.
To whoever was actually in the room during planning, who might know something the confused person never did ("oh, we decided against that"), and it happened mid-implementation, once the ambiguity had ripened into something concrete enough to ask.
A clarifying question aimed back at the same head that wrote the prompt isn't a second opinion.
It's the [Ever-Agreeing Genie](https://schrottner.at/2026/06/26/The-Ever-Agreeing-Genie.html) checking in with its own owner.
Same blind spot, asking itself for permission.

There's one failure mode that's genuinely new, and it's this one. Not "will requirements drift". Drift is old news, teams have always discovered mid-sprint that the story didn't mean what everyone thought. What's new is the question of what happens next. Does the agent stop and pull the team back in? Push through on a guess and hope? Sit idle waiting on people who've already moved on to the next ticket?

The old model never had to answer that, because the implementer and the circuit breaker were the same person. This one split them apart, and nobody's designed what replaces the walk to the desk.

Every other failure mode on this list has a twenty-year-old fix already sitting in the Agile playbook, waiting to be pointed at a Spec Session instead of a sprint. [Rotating facilitation](https://schrottner.at/2026/06/22/The-PO-is-Dead-Long-Live-the-PO.html). Clear invite policies. Splitting stories that are too big to hold in one sitting. None of that needs reinventing.

What needs inventing is the thing that used to be free. A model that removes the confused human also removes the only mechanism that ever caught its own mistakes before they shipped. That gap is easy to admit in writing. Whether the room running the session is prepared for it is a different question.
