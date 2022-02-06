---
layout: print
title: coryarcangel.com the book
---
hi, is this a book?

<ul>
{% assign things_list = site.data.things | sort: "year" | reverse %}
{% for things in things_list %}
  <li>
      <a href="{{ things.url }}">
      {{ things.title }}, {{ things.year }}
      </a>
  </li>
{% endfor %}
</ul>