---
layout: things-i-made-index
title: Things I Made 
---
<a href="../">↩ Home</a> 
<ul>
{% assign things_list = site.data.things | sort_natural: "inv_num"%}
{% for things in things_list reversed %}
  <li>
      <a href="{{ things.url }}">
      {{ things.title }}, {{ things.year }}
      </a>
  </li>
{% endfor %}
</ul>