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
date: 2026-07-14 09:00:00 +0200
---

> *Mimesis was the Greek word for imitation, and the oldest theory of how we learn: by copying a thing long before we understand it. Understanding, if it comes, comes after.*

[The End of the Craftsman](https://schrottner.at/2026/06/24/The-End-of-the-Craftsman.html) ended with a promise. The junior question deserved more than a paragraph, I said, and would get its own post later. This is that post.

Aristotle had a word for how humans learn a skill before they understand it: mimesis. We watch, we imitate, and only later do we understand what we were doing. A child doesn't learn to speak by studying grammar first. A junior doesn't learn to debug a production system by reading a postmortem. Both copy a move long before they can explain why the move works.

That's the specific thing missing when a junior sits across from an agent instead of a senior. Not knowledge in the abstract. The move itself.

<!--more-->

What actually gets copied in an apprenticeship is narrow and specific. Which log line to check first when a request times out. The half-second pause before touching a config file that's been stable for three years. The instinct that an elegant fix is wrong for this particular system, for reasons that have nothing to do with elegance and everything to do with a decision made two years ago that never made it into any document.

None of that is information you could write down and hand over. It's a sequence of attention - where to look first, what to distrust, what "off" feels like before you can name what's wrong. A junior doesn't absorb that from an answer. They absorb it from watching the question get asked.

This is the part a spec can't carry, no matter how well-written. A spec captures [what the team decided](https://schrottner.at/2026/06/30/The-Agora.html). It doesn't capture the moment a senior went quiet for a second before answering, because that pause was itself the thing worth learning from.

A junior working next to an agent gets the outcome without the performance that produced it. Clean, fast, and stripped of the one part that was ever going to teach them anything.

Understanding comes after the imitation, not before it. That's the order Aristotle had right, and the order most onboarding plans get backwards. You can't fast-track a junior past the copying phase by giving them better answers faster. You can only give them, or fail to give them, enough moments where the move is visible enough to copy.
