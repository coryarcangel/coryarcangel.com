---
layout: default
title: things
---

<ul>
{% for things in site.data.things %}
  <li>
      {{ things.title }}, {{ things.year }}
  </li>
{% endfor %}
</ul>