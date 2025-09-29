---
layout: things-i-made-index
title: Things I Made 
---
<a href="../">Home</a> > Things
<ul>
{% assign things_list = site.data.things %}
{% for things in things_list %}
  <li>
      <a href="{{ things.url }}">
      {{ things.title }}, {{ things.year }}
      </a>
  </li>
{% endfor %}
</ul>