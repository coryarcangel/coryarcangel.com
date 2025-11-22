---
layout: shows-index
title: Shows
---
[Biz](../../)  / <a href="../study">*Study*</a> > Shows
<ul>
{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
  <li>
      <a href="{{ shows.url }}">
      {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.state_country }}, {{ shows.year }}
      
    {% if shows.status == "soon"  %}
	🔜
	{% elsif shows.status == "now" %}
	✌️
	{% endif %}	
      
      </a>
  </li> 
{% endfor %}
</ul>