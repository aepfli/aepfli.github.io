---
layout: default
title: Blog
permalink: /blog/
---

# Blog

Occasional notes on feature flagging, observability, and where open standards are heading — plus the occasional personal reflection on the work, the community, and life around it.

<ul class="links">
{% for post in site.posts %}
  {% assign postyear = post.date | date: "%Y" | plus: 0 %}
  {% if postyear >= 2026 %}
  <li><a href="{{ post.url | relative_url }}">{{ post.title }} <span class="handle">{{ post.date | date: "%Y-%m-%d" }}</span></a></li>
  {% endif %}
{% endfor %}
</ul>
