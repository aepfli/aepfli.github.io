---
layout: post
title: "The Wrong End of the Problem"
question: "Where does AI actually belong in your development process?"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-06-18 09:00:00 +0200
---

Every company I talk to wants AI in their development process right now.
Most put it in the same spot: the IDE, the terminal, right where the code gets typed.
That part is easy. Where it actually belongs is the question.

<!--more-->

Most teams I see have done the same thing.
Handed developers access to an AI assistant and told them to move faster.
Copilot in the IDE.
Claude in the terminal.
Pick your tool.
The tickets stay the same.
The process stays the same.
The planning meetings stay the same.
The only thing that changed is how the code gets typed.

The tool got added.
The process didn't move.

And it breaks down fast.
One power user with AI can produce more code than a team can review.
Two or three power users in the same team and the review process is basically gone.
Nobody can keep up, and the code ships anyway.

There's a term worth knowing here: Spec-Driven Development.
The idea is that a detailed spec becomes the source of truth, not the code.
Agents implement from it.
Requirements change, you update the spec.
[AI Unified Process](https://unifiedprocess.ai/) is one example of this in practice.
It's a sound technical approach.

But I think it stops short of the actual problem.

The spec has to come from somewhere.
Someone has to write it, and someone has to agree on it.
That part is still the old process, just with a new artifact at the end.

What I'd suggest looks a bit different.
And it has a name most engineers already know: shift left.

Not in the testing sense.
In the team sense.
The collaboration moves earlier.
The engineering work is now about defining what the system should do, precisely enough that an agent can run with it.

That happens in what I'd call a Spec Session.
Mob planning instead of mob programming. The whole team, working on one spec.
Or async. A pull request on the spec instead of on code.
Review comments about intent and edge cases, not implementation.
Engineers already know this workflow.
The artifact is just different now.

Once the spec is agreed, the agent picks up the work.
Not on anyone's laptop. It's sitting in your infrastructure, watching for ready tickets, the same way a CI runner watches for commits.
It implements, an AI reviewer checks the output, flags what doesn't fit, cycles back.
That loop runs until it's done.
The human comes back in at the end to review the final output, not to write code in the middle.

Stacked diffs are probably the right format here.
Smaller, sequential changesets the agent ships incrementally. Easier to reason about, easier to review.
[Gergely Orosz wrote a good primer](https://newsletter.pragmaticengineer.com/p/stacked-diffs) on why this workflow matters if you're not familiar.

Ambiguous acceptance criteria used to be something a developer resolved mid-sprint.
In this model they surface in the Spec Session, where the whole team can catch them.
That's the point.

I don't think most teams are avoiding this intentionally.
It's just that changing the process is harder than adding a tool.
Adding a tool has a procurement step and a license.
Changing how a team thinks about its own work is a different kind of problem.

But fitting AI into an existing process gets you faster typing.
The thinking stays the same depth as before.

I think the teams that treat the Spec Session as the primary engineering output, and let the loop handle the rest, will pull ahead of the ones still bolting AI onto the old process.

One thing I haven't figured out yet is what to call it.
Mob Planning.
Mob Specing.
Spec Session.
Extreme Specing.
All of them borrow from XP deliberately. The idea is the same, just one level up from code.
If you have a better name, I'd genuinely like to know.

I don't know if anyone is actually running this way yet.
But I want to try.
Especially the part where the agent just picks up the work and runs.

> Adding AI to your process makes the typing faster. Moving the engineering work to the spec, and letting the loop carry it from there, is the part that actually changes the depth of the thinking.
