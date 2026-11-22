---
layout: default
title: "Telemetry on Demand"
permalink: /series/telemetry-on-demand/
eyebrow: The series
---

What if telemetry was decided at runtime instead of at deploy time?

We record everything, all the time, because changing what we record has always meant a redeploy.
These posts follow a different idea: lean telemetry by default, with OpenFeature flags turning detail up where something goes wrong, and agents fast enough to do the turning.

It's a working theory, built in public a post at a time, and I'd like to hear where it breaks.

{% assign parts = site.posts | where: "series", "Telemetry on Demand" | sort: "date" %}
<ul class="links">
{% for part in parts %}
  <li>
    <a href="{{ part.url | relative_url }}">{{ part.title }} <span class="handle">{{ part.date | date: "%Y-%m-%d" }}</span></a>
  </li>
{% endfor %}
</ul>
