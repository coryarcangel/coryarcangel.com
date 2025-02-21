---
layout: default
title: News
---
<a href="../">↩ Home </a>
{% for post in site.posts limit:1 %}{{ post.content }}{% endfor %}

{{ site.time | date: '%d/%m/%y' }}