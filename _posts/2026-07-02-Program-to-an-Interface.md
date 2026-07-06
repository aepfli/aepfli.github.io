---
layout: post
title: "Program to an Interface"
tags:
- Software Engineering
- Leadership
- Organization Design
author:
- Simon Schrottner
excerpt_separator: <!--more-->
date: 2026-07-02 08:00:00 +0200
---

Every engineer learns it early. Program to an interface, not an implementation. Depend on the contract, not the concrete class.

We just never apply it to ourselves.

<!--more-->

Companies don't define what a unit must provide to the rest of the organization. They define how the unit must work internally. The roles it must have. The ceremonies it must run. That's not an interface. That's an implementation — mandated from outside, with little room to change.

A team doesn't get "you are responsible for stakeholder communication, here is how the rest of the org will address you." It gets a Product Owner. A concrete class, instantiated a hundred times across the company whether it fits or not.

The unit here is deliberately vague. A team. A department. A division. The pattern repeats at every level, and at every level someone in a leadership role could change it.

Company-wide rollouts have to fit everywhere, so they get designed for the smallest common denominator of every unit involved. Too rigid for the teams at the bottom, too shallow for the expectations at the top. An ideal model for no one, applied to everyone.

Define the contract instead. A unit owes the organization a way to be addressed, a way to raise dependencies, a way to signal state. Make those interfaces explicit and easy to call. What happens behind them is the unit's business.

Some units will implement stakeholder handling as a dedicated role. Some will rotate it. Some will invent something nobody has named yet. As long as the contract holds, none of that is something to fight.

The responsibility cuts both ways. Ill-defined interfaces leak chaos into the outer system, and the outer system responds the only way it knows: by prescribing implementations again. Autonomy is earned by being easy to depend on.

Team Topologies calls this a team API. Amazon forced every internal system behind service interfaces. The team API goes beyond code — it includes how a team wants to be communicated with. The idea isn't new. What's telling is what happens to it: Team Topologies itself gets rolled out as four team types and three interaction modes, mandated everywhere. The book about interfaces becomes another implementation.

Escaping that fate asks for something no rollout can mandate. Trust.

A leader in this model does less than the job description suggests. Mostly it's refusing to standardize things that don't need standardizing. Shielding the unit from the next rollout. That produces nothing visible — no framework, no transformation deck, no reorg to point at. Just room.

A unit that owns its implementation doesn't innovate in leaps. It iterates. One small change at a time, behind a stable contract, without disturbing anyone outside. That's the part rollouts can't replicate — a rollout is one big bet, placed once, for everyone. Small iterations fail small and compound quietly. Sometimes what they compound into is worth stealing for the level above.

Maybe the org chart was always an implementation detail. We just kept treating it as the architecture.
