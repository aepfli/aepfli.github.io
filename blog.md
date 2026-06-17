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
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }} <span class="handle">{{ post.date | date: "%Y-%m-%d" }}</span></a>
    {% if post.tags %}
    <ul class="tags">
      {% for tag in post.tags %}
      <li class="tag"><a href="{{ '/tags/' | relative_url }}#{{ tag | slugify }}">{{ tag }}</a></li>
      {% endfor %}
    </ul>
    {% endif %}
  </li>
  {% endif %}
{% endfor %}
</ul>
