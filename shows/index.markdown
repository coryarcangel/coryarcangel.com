---
layout: shows-index
title: Shows
---
<a href="../">↩ Home </a>
<ul>
{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
  <li>
      <a href="{{ shows.url }}">
      {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.year }}
      
    {% if shows.status == "soon"  %}
	🔜
	{% elsif shows.status == "now" %}
	☃
	{% endif %}	
      
      </a>
  </li>
{% endfor %}
</ul>