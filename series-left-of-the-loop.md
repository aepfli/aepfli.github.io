---
layout: default
title: "Left of the Loop"
permalink: /series/left-of-the-loop/
---

# Left of the Loop

Left of the Loop is a mental model I'm building in the open.

> As implementation becomes abundant, organizations that preserve constructive friction will outperform organizations that optimize it away.

The premise: as agents take over more of the implementation, the engineering work moves earlier — left, toward defining what the system should do, before anything gets built.

I want to be honest about what this is.
It's a working theory.
I don't have the structure to validate it — no team running it end to end, no metrics, no proof it holds up at scale.
These are brain dumps, not conclusions.

But I think it might be worth moving forward.
As a team. Maybe as a company.
A way to empower engineers again — to put thinking back at the center of the work, instead of turning people into reviewers of whatever the agent produced.

So I'll keep writing.
More posts will land here over time, as I dump the ideas into the project and they take some kind of shape.
Read them as conversation starters.
If one shifts how you see your own process — or you think I've got it wrong — that's exactly the point. Tell me.

{% assign parts = site.posts | where: "series", "Left of the Loop" | sort: "date" %}
<ul class="links">
{% for part in parts %}
  <li>
    <a href="{{ part.url | relative_url }}">{{ part.title }} <span class="handle">{{ part.date | date: "%Y-%m-%d" }}</span></a>
  </li>
{% endfor %}
</ul>
