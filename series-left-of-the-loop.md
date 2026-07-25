---
layout: default
title: "Left of the Loop"
description: "AI erodes the incidental friction that used to produce shared understanding as a byproduct of the work. That makes shared understanding the scarce resource, and constructive friction the mechanism that protects and tests it. Implementation getting radically cheaper is why this is happening now, and at scale. The organizations that preserve the constructive kind will outperform the ones that optimize it away."
permalink: /series/left-of-the-loop/
---

# Left of the Loop

*A series about shifting engineering left in the age of agents.*

Left of the Loop is a mental model I'm building in public.

> AI erodes the incidental friction that used to produce shared understanding as a byproduct of the work. That makes shared understanding the scarce resource, and constructive friction the mechanism that protects and tests it. Implementation getting radically cheaper is why this is happening now, and at scale. The organizations that preserve the constructive kind will outperform the ones that optimize it away.

Practically, that means engineering work moves earlier. Left, toward defining what the system should do before anything gets built.

This is a working theory, not a proven framework. I don't have the structure yet to validate it at scale: no team running it end to end, no metrics, no final proof. These are field notes, not conclusions.

But I think it's worth following. Maybe as a team, maybe as a company. Not to turn engineers into reviewers of whatever the agent produced, but to put thinking back at the center of the work.

I'll keep writing as the ideas take shape. If a post shifts how you see your own process, or you think I've got it wrong, that's the point. Tell me.

{% assign p_start = site.posts | where: "title", "The Wrong End of the Problem" | first %}
{% assign p_agora = site.posts | where: "title", "The Agora" | first %}
{% assign p_alexandria = site.posts | where: "title", "The Alexandria Problem" | first %}
{% assign p_phoenix = site.posts | where: "title", "The Phoenix" | first %}
Short on time? Four posts carry the spine: [The Wrong End of the Problem]({{ p_start.url | relative_url }}) sets up where AI actually belongs in the process. [The Agora]({{ p_agora.url | relative_url }}) is the room where a team builds that understanding together. [The Alexandria Problem]({{ p_alexandria.url | relative_url }}) is what's at stake when nobody writes the code anymore. [The Phoenix]({{ p_phoenix.url | relative_url }}) closes it. Read the rest when you want the whole argument.

{% assign parts = site.posts | where: "series", "Left of the Loop" | sort: "date" %}
{% assign smeta = site.data.series["Left of the Loop"] %}
{% if parts.size < smeta.total %}
<p class="series-progress">So far {{ parts.size }} of {{ smeta.total }} parts are live. A new one lands {{ smeta.cadence }}, through {{ smeta.final_date }}.</p>
{% else %}
<p class="series-progress">The complete series: {{ smeta.total }} parts.</p>
{% endif %}
<ul class="links">
{% for part in parts %}
  <li>
    <a href="{{ part.url | relative_url }}">{{ part.title }} <span class="handle">{{ part.date | date: "%Y-%m-%d" }}</span></a>
    {% if part.question %}<span class="blurb">{{ part.question }}</span>{% endif %}
  </li>
{% endfor %}
</ul>
