---
layout: default
title: Shows
---
<a href="../">↩ Home </a>
<ul>
{% assign shows_list = site.data.shows | sort: "year" | reverse %}
{% for shows in shows_list %}
  <li>
      <a href="{{ shows.url }}">
      {{ shows.venue }}, {{ shows.state_country }}, <i>{{ shows.title }}</i>, {{ shows.year }}
      </a>
  </li>
{% endfor %}
</ul>