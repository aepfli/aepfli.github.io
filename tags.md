---
layout: default
title: Tags
permalink: /tags/
---

# Tags

{% assign sorted_tags = site.tags | sort %}
<ul class="tags">
{% for tag in sorted_tags %}
  <li class="tag"><a href="#{{ tag[0] | slugify }}">{{ tag[0] }} <span class="count">{{ tag[1].size }}</span></a></li>
{% endfor %}
</ul>

{% for tag in sorted_tags %}
<h2 id="{{ tag[0] | slugify }}">{{ tag[0] }}</h2>
<ul class="links">
{% for post in tag[1] %}
  <li><a href="{{ post.url | relative_url }}">{{ post.title }} <span class="handle">{{ post.date | date: "%Y-%m-%d" }}</span></a></li>
{% endfor %}
</ul>
{% endfor %}
