---
layout: shows-index
title: Shows
---
<a href="../">↩ Home </a>
<ul>
{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.status == "news" %}
<li><a href="{{ shows.url }}">{{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.year }}</li>	
{% endif %}
{% endfor %}
</ul>