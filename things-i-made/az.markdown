---
layout: default
title: Things I Made 
---
<a href="../">↩ Home</a> [y↓](index)
<ul>
{% assign things_list = site.data.things | sort_natural: "title" %}
{% for things in things_list %}
  <li>
      <a href="{{ things.url }}">
      {{ things.title }}, {{ things.year }}
      </a>
  </li>
{% endfor %}
</ul>