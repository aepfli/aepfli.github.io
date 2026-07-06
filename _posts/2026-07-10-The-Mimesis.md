---
layout: post
title: "The Mimesis"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-10 09:00:00 +0200
---

> *Mimesis was the classical word for imitation: the making of a copy, and also the way a person learns. Aristotle thought it our first form of knowledge. We watch, we imitate, and understand only later what we were copying.*

Somewhere in the last year I noticed I was talking to my colleagues less. Not because anything changed between us. Because when I hit a wall, I opened a chat window instead of walking over to a desk.

It felt efficient at the time. It still does, most days. But something was quietly going missing, and it took a while to notice what.

<!--more-->

Implementation used to be the thing that forced people to talk. Someone reviews your pull request and asks why you did it that way. Someone pairs with you and catches the assumption you didn't know you were making. Someone overhears a design discussion in the hallway and mentions the time their team hit the exact same wall two years ago.

None of that was designed as a teaching mechanism. It was a side effect of people having to look at each other's implementation to get anything done. The knowledge transfer wasn't the point. It was the tax that came bundled with the work.

Take the implementation out of the shared space and the tax disappears along with the transfer. Not just for juniors. [Seniors are losing the habit of talking to each other too](https://schrottner.at/2026/06/28/The-Alexandria-Problem.html), one AI conversation at a time.

The junior problem is the sharper version of this, because juniors were never learning from documentation in the first place. They were learning from watching. Watching a senior get paged at 2am and trace a slowdown back to a query that looked fine on paper. Watching someone explain why the elegant solution was wrong for this particular system, in this particular company, for reasons that never made it into any spec.

You cannot write that down in advance. You can't spec your way into knowing why a system behaves badly under load - that knowledge only exists on the other side of having hit the wall, or having stood next to someone who did. A perfect specification handed to an agent skips the part where a junior would have been standing in the room when the wall got hit.

The [Spec Session](https://schrottner.at/2026/06/30/The-Agora.html) is the closest thing left to that room.

It's not a coincidence that this is also where the team argues about intent, challenges assumptions, catches the edge case nobody thought to write down. All of that is visible, in real time, to whoever is in the session. A junior watching a senior push back on a vague requirement is watching the exact skill they'll need in five years, demonstrated live, for free.

Mob programming already knew this. Pairing already knew this. The XP crowd has been saying for years that the value isn't just fewer bugs, it's the transfer that happens when people build something in the same room. Nothing about that principle changes when the room is planning a spec instead of writing code. The modality moved. The mechanism didn't.

What that means in practice is uncomfortable for anyone optimizing for speed. Fewer sessions, run by fewer people, planning tickets that get thrown straight at an agent, will produce output faster than a whole team wrestling over a spec together. It will also produce a team that stops getting better at the thing that made them worth hiring.

A team can survive being slower for a while. It has a much harder time surviving one that quietly stopped teaching itself.
