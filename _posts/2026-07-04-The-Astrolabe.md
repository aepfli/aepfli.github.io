---
layout: post
title: "The Astrolabe"
tags:
- Agentic Systems
- Platform Engineering
- Software Engineering
author:
- Simon Schrottner
series: "Left of the Loop"
excerpt_separator: <!--more-->
date: 2026-07-04 09:00:00 +0200
---

> *An astrolabe doesn't map every star. It gives you a way to find your position relative to the ones that hold still.*

That's the instrument I reach for when someone asks which AI tool they should be using. The honest answer is that the tools will be different in six months. The layers won't.

I spent a week trying to make sense of a handful of names that kept showing up in the same conversations.
[Tessl](https://tessl.io/). [Goose](https://goose-docs.ai/). [Archestra](https://archestra.ai/). [Kestra](https://kestra.io/). [Modelplane](https://modelplane.ai/). [RAG](https://en.wikipedia.org/wiki/Retrieval-augmented_generation), [MCP](https://modelcontextprotocol.io/), half a dozen others orbiting nearby.
Each one has its own pitch, its own funding round, its own reason it's the thing you should adopt next. Taken together they read like noise.

Taken apart, they sit on different floors of the same building. The agent loop again, the one I keep coming back to. Once you place each tool on a floor, the noise turns into a map.

<!--more-->

[Tessl](https://tessl.io/) sits [left of the loop](https://schrottner.at/series/left-of-the-loop/), at the intent layer.
Turn a spec into something an agent runs against directly.
This is the one tool on the list that pushes back instead of going along with it.
A well-formed spec is not the same thing as a team that agrees on what the spec means.
The [Agora](https://schrottner.at/2026/06/30/The-Agora.html) produces the second thing as a byproduct of producing the first.
Tessl produces the first and assumes the second follows. It doesn't, automatically. That's the whole argument.

[RAG](https://en.wikipedia.org/wiki/Retrieval-augmented_generation) and [MCP](https://modelcontextprotocol.io/) are plumbing. Protocol, not position. They carry context into the loop and don't take a side in any argument about who should be in the room when the spec gets written.

They're also the one floor with an actual standard.
MCP, [A2A](https://a2aproject.github.io/A2A/latest), [ACP](https://agentcommunicationprotocol.dev/), all under [Linux Foundation](https://aaif.io/) governance now, joint working groups, cross-protocol commitments.
Passing data between systems is a solved problem with decades of precedent behind it, so it standardized almost on contact.
Nothing else on this floor plan has that.
Governance, orchestration, the harness, the spec layer: every vendor is still building its own version and calling it the obvious one.
The standard showed up first at the floor that mattered least to this argument.

[Goose](https://goose-docs.ai/) is a harness. The scaffolding a raw model needs to become something that can actually run a loop. Claude Code is a competing harness. This is the part that executes, not the part that decides.

[Archestra](https://archestra.ai/) sits around the loop, not inside it.
Registry, gateway, guardrails, cost tracking, observability.
Its own pitch is roughly: stop wiring this together yourself.
That's the concrete version of [an argument I've made before](https://schrottner.at/2026/06/18/The-Wrong-End-of-the-Problem.html), about centralizing the agent loop as infrastructure so individual engineers stop each carrying their own version of it.
Archestra is what that looks like once someone builds it as a product instead of a hope.

[Kestra](https://kestra.io/) runs underneath, and it's the odd one out.
It predates the agent wave by years, an orchestrator in the Airflow lineage, now repositioning toward agentic workflows because that's where the funding and the attention are.
There's a fair question buried in that: is bolting agents onto an existing pipeline the wrong end of the problem, or is orchestration the one layer where the existing pipeline genuinely carries over?
I don't think I've earned a clean answer to that one yet.

[Modelplane](https://modelplane.ai/) sits at the bottom. GPU fleets, inference clusters, the layer where the model physically runs. It comes from the [Crossplane](https://crossplane.io/) world, and Crossplane's own position is worth sitting with: that API-first infrastructure eliminates tribal knowledge. Publish a hardware class, declare a model, get an endpoint. Neither side needs to know the other's job.

That's true, and it's worth being precise about where it's true. Infrastructure-layer tribal knowledge can become an API. It should. Nobody needs a senior engineer's intuition about which GPU pool has headroom this week. But product-intent understanding doesn't reduce the same way. There's no schema for why we're building this feature and not the other one. You can declare a model. You can't declare an agreement.

A year from now this list will have different names on it. That's fine. It's not the list that matters. What doesn't move is the floor plan: something has to hold the spec, something has to carry context, something has to run the loop, something has to govern what it's allowed to touch, something has to schedule it, something has to run the model underneath all of it. One of those floors has a standard. The rest are still every vendor for themselves.

Know which floor you're standing on before you pick a tool for it. The team that agreed on the spec doesn't change no matter which floor gets rebuilt this quarter.

## References

- [Tessl](https://tessl.io/) — intent and spec layer
- [Goose](https://goose-docs.ai/) — open source agent harness, now under the Agentic AI Foundation
- [Archestra](https://archestra.ai/) — MCP registry, gateway, and governance layer
- [Kestra](https://kestra.io/) — declarative orchestration platform
- [Modelplane](https://modelplane.ai/) — open source control plane for AI inference, built on Crossplane
- [Crossplane](https://crossplane.io/) — control plane framework for cloud-native infrastructure
- [Model Context Protocol (MCP)](https://modelcontextprotocol.io/) — protocol for connecting agents to tools and data
- [Agent2Agent Protocol (A2A)](https://a2aproject.github.io/A2A/latest) — protocol for agent-to-agent coordination
- [Agent Communication Protocol (ACP)](https://agentcommunicationprotocol.dev/) — REST-native agent communication protocol
- [Agentic AI Foundation (AAIF)](https://aaif.io/) — Linux Foundation body governing MCP, A2A, ACP, and Goose
