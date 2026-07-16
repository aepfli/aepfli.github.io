---
layout: default
title: "Left of the Loop"
permalink: /series/left-of-the-loop/
---

# Left of the Loop

*A series about shifting engineering left in the age of agents.*

Left of the Loop is a mental model I'm building in public.

> As implementation becomes abundant, the organizations that preserve constructive friction will outperform the ones that optimize it away.

The premise is simple: as agents take over more of the implementation, engineering work moves earlier. Left, toward defining what the system should do before anything gets built.

This is a working theory, not a proven framework. I don't have the structure yet to validate it at scale: no team running it end to end, no metrics, no final proof. These are field notes, not conclusions.

But I think it's worth following. Maybe as a team, maybe as a company. Not to turn engineers into reviewers of whatever the agent produced, but to put thinking back at the center of the work.

I'll keep writing as the ideas take shape. If a post shifts how you see your own process, or you think I've got it wrong, that's the point. Tell me.

{% assign parts = site.posts | where: "series", "Left of the Loop" | sort: "date" %}
<ul class="links">
{% for part in parts %}
  <li>
    <a href="{{ part.url | relative_url }}">{{ part.title }} <span class="handle">{{ part.date | date: "%Y-%m-%d" }}</span></a>
  </li>
{% endfor %}
</ul>
