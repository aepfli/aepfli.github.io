---
layout: post
title: "The PO is Dead, Long Live the PO"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-06-22 09:00:00 +0200
---

When I wrote about [shifting the engineering process left](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html) (spec sessions, autonomous agents, humans reviewing output rather than writing code), a question kept coming up.
Where does the Product Owner fit in all of this?

It's the right question.
And I think the answer is more interesting than "the PO disappears."

<!--more-->

Let's start with acceptance criteria.

We invented them to bridge a gap.
The team needed to know when something was done.
The PO needed confidence that what got built matched the intent.
Acceptance criteria were the contract between the two.

But if the Spec Session is where intent gets defined, by the whole team, together, before the agent runs, that gap closes.
What the team agreed on in the room is the definition of done.
The spec is the acceptance criteria.
You don't need a separate validation step because the planning and the agreement happened at the same time.

The tighter the loop, the less ceremony you need around it.

There's a caveat though.
The spec is a necessary contract.
It's not a sufficient one.

Simon Martinelli's work on the [AI Unified Process](https://unifiedprocess.ai/) validates the spec-driven approach technically.
But his model is about the artifact. Requirements at the center, AI generating everything else from them.
How the team actually builds shared understanding before the spec exists isn't something it addresses.
That's not a criticism.
It's just a different question.

A spec written after a real Spec Session, where the team worked through edge cases together, disagreed, got to resolution, is different from a spec written by one person and signed off asynchronously.
Same artifact.
Different quality of shared understanding.

That distinction matters when the agent hits an edge case the spec didn't anticipate.

So what's actually left for a dedicated PO?

Two things.
And they're very different.

The first is product thinking: challenging intent, representing user needs, asking why before the agent runs with something.
That's valuable.
But it doesn't require a dedicated role.
It requires a mature team.
Any senior engineer, any tech lead, any team member who has been through enough Spec Sessions absorbs that skill over time.
Product thinking becomes a team competency rather than a single person's job.

The second is stakeholder management.
Navigating department leads.
Carrying the political standing to push back on executive requests.
Translating business pressure into something a team can actually work with.
That's a genuinely different skill set. And not everyone has it or wants to develop it.

That part doesn't dissolve into the team.
That might be the only thing that survives as a dedicated role.
Not a Product Owner in the agile sense.
Something more like a Stakeholder Navigator.

I know how that sounds.
A rebranded PO.
Honestly, partly yes.
The difference is in what gets owned.
In the old model the PO owns the product thinking and manages stakeholders.
In this one the team owns the product thinking and the navigator owns the organizational interface.
That's a real split, even if the job title looks similar from the outside.

There's a risk worth naming.
Shared product thinking sounds good until a Spec Session turns into a three-hour debate with no conclusion.
A dedicated PO could make a call.
A team doing product thinking together can circle endlessly. Especially without someone in the room with the authority to close the discussion.

Spec sessions becoming the new endless grooming is a real failure mode.
The antidote is probably a rotating session lead. Someone who owns the room that day, not the product forever.
But it needs to be deliberate.
Left unmanaged, consensus eats the speed the agent loop is supposed to deliver.

The roles we have were designed for a world where planning, implementation, and review were separate phases.
PO owns the what.
Team owns the how.
Scrum Master owns the process.
That made sense when the phases were weeks apart.

If the loop collapses (Spec Session, agent implements, review, repeat), the phases collapse too.
And roles built around phase boundaries start to blur.

I don't think this happens overnight.
Not every team is ready to absorb product thinking.
Some teams need a dedicated PO precisely because that skill isn't there yet.
That's fine. It becomes a development goal, not a permanent structure.

But the direction is clear enough.
The tighter the loop gets, the more the team needs to think in products, not just tickets.
The Spec Session is where that thinking lives. Not as a document handoff, but as a room where shared understanding actually gets built.

The Stakeholder Navigator is who protects that room from the outside while it's happening.

That's not a smaller team.
It's just a different one.
