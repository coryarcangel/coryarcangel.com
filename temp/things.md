---
layout: default
title: Things
---

hello
	
{% assign showz_list = '' | split: '' %}
{% assign shows_list = site.data.shows | where: "ee_id_show","5000" %}
shows_list:  
{% for shows in shows_list %}
  <li>
      <a href="{{ shows.url }}">
      {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.year }}
      </a>
  </li>
{% endfor %}
showz_list:  
{% assign showz_list = site.data.shows | where: "ee_id_show","5000" %}
{% for showz_current in showz_list %}		
<li>
<a href="../shows/{{showz_current.url }}">
{{ showz_current.venue }}, <i>{{ showz_current.title }}</i>, {{ showz_current.year }} 
</a>
</li>		
{% endfor %}
<hr>
# Array shows_list  
<hr>
{{ shows_list }}
<hr>  
# Array showz_list  
<hr>
{{ showz_list }}