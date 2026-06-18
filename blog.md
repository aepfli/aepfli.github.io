---
layout: default
title: Blog
permalink: /blog/
---

# Blog

Brain dumps, mostly. Thoughts that needed somewhere to go.
Unstructured by nature, shaped with AI help. The ideas are mine — the readability is a team effort.
Read it like a conversation starter, not a finished argument.

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
