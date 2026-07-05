---
layout: default
title: "Dancing the Limbo"
permalink: /series/dancing-the-limbo/
---

# Dancing the Limbo

An open, ongoing reflection on the in-between.

Getting laid off ended a role I loved and started a stretch with no fixed answer to what comes next.
These posts are written from inside that uncertainty — thinking out loud about purpose, roles, and what's worth committing to, while I'm still figuring it out.

Not conclusions. Notes from the dancefloor.

{% assign parts = site.posts | where: "series", "Dancing the Limbo" | sort: "date" %}
<ul class="links">
{% for part in parts %}
  <li>
    <a href="{{ part.url | relative_url }}">{{ part.title }} <span class="handle">{{ part.date | date: "%Y-%m-%d" }}</span></a>
  </li>
{% endfor %}
</ul>
