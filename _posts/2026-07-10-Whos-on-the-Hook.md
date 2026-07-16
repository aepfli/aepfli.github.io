---
layout: post
title: "Who's on the Hook?"
question: "When agents write the code, who's accountable for what ships?"
tags:
- Agentic Systems
- Software Engineering
- Leadership
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-10 09:00:00 +0200
---

> *To be on the hook is to be the one who answers when something breaks. Every team carries a picture of where that hook hangs. This is about whether the picture was ever true.*

It's the first question any skeptical engineering leader asks about this model. The agent implements from a spec the team agreed on. Something breaks in production. Who's on the hook?

The question assumes an answer that was never true to begin with.

<!--more-->

Before any of this, when a dev wrote the code by hand and it broke in production, it wasn't that dev on the hook. It was the team. The PR got reviewed and approved by someone else. The design got discussed before anyone opened an editor. Production incidents got postmortems, not disciplinary letters with one name on them. Accountability was never individual. It just felt that way because one person's hands were on the keyboard.

Nothing about that changes here. A part of the work moved to an agent. The team is still what's on the hook, because the team was always the unit of accountability, not the person typing.

If anything, it gets better. The team can review the spec with stakeholders before a line of anything gets implemented. That's a review of intent, done at the point where a mistake costs nothing but a conversation, instead of a review of code, done at the point where a mistake already has a diff attached to it and a deadline breathing on it.

Catching a wrong assumption in a [spec session](https://schrottner.at/2026/06/30/The-Agora.html) is cheap. Catching it in a production incident is not. Moving the review earlier doesn't remove accountability. It makes the team accountable for something they now have a real chance to get right before it ships.

Think about what happened when CI/CD automation showed up. Devs used to build the artifact and deploy it themselves, by hand. Now a pipeline does that. Nobody concluded the team stopped being responsible for what got deployed, just because a machine ran the deploy step. The responsibility didn't go anywhere. The execution did.

The pipeline is a useful comparison, but not the way it first looks.
The agent isn't the pipeline.
The pipeline never made a judgment call. It repeated a known process, the same way every time.
The agent does make judgment calls, constantly, inside whatever space the spec left open.
The spec is the pipeline config.
It's the thing that bounds what the automation is allowed to decide on its own.
The team was always accountable for what they configured the pipeline to do.
Here, the team is accountable for what they configured the spec to allow.

None of this makes the work disappear, it relocates it. Feature flags let the team gate a release and roll back a bad decision without a fire drill. A [centralized loop](https://schrottner.at/2026/07/06/The-Oikonomos.html) means a mistake gets caught and fixed once, for the whole organization, instead of once per team that happens to hit it. An org that can see its own failures learns faster than one where every team quietly repeats the same one in isolation.

That's tooling helping the team meet the responsibility it already had, not tooling that takes the responsibility away.

Here's the honest complication. Philosophically, "the team is accountable" has always been correct. Institutionally, organizations don't act like it. Performance reviews look for a name. Postmortems, whatever they claim about blamelessness, tend to end with someone quietly on a list. AI doesn't create this tension. It just makes it uncomfortable to keep ignoring, because now there's a very obvious non-human party in the room to blame instead, and that's an easy story to reach for.

The honest answer isn't that the team is accountable and the discomfort goes away. It's that organizations built rituals pretending accountability was individual, and this is a good moment to stop pretending.

AI is a tool. Tools don't take on responsibility, and they don't remove it either. What changed is what got automated. What didn't change, and never was going to, is who answers for it.
