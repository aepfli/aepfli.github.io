---
layout: default
title: Archive
permalink: /archive/
---

# Archive

Older blog posts from 2021. Kept for posterity — many are specific to tools or versions that have since moved on.

<ul class="links">
{% for post in site.posts %}
  <li><a href="{{ post.url | relative_url }}">{{ post.title }} <span class="handle">{{ post.date | date: "%Y-%m-%d" }}</span></a></li>
{% endfor %}
</ul>
