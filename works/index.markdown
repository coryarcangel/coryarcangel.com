---
layout: works-index
title: Works
---
[Biz](../../)  / <a href="../study">*Study*</a> > Works
<ul>
{% assign works_list = site.data.works %}
{% for works in works_list %}
  <li>
      <a href="{{ works.url }}">
      {{ works.title }}, {{ works.year }}
      </a>
  </li>
{% endfor %}
</ul>