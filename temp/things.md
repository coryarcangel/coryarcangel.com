---
layout: default
title: Things
---

hello
	
{% assign showz_list = '' | split: '' %}
	
{% assign shows_list = site.data.thingsXshows | where:"inv_num","2002-001" %}
{% if shows_list.size != 0 %}
<b>Shows ↴</b>
<ul>
	{% for shows in shows_list %}
		{% assign ee_id_shows = site.data.shows | where:"ee_id_show",shows.ee_id_show %}
	
		{% assign showz_list = showz_list | push: ee_id_shows %}
	
		{% for ee_id_shows_current in ee_id_shows %}		
		<li>
		<a href="../shows/{{ ee_id_shows_current.url }}">
		{{ ee_id_shows_current.venue }}, <i>{{ ee_id_shows_current.title }}</i>, {{ ee_id_shows_current.year }}
		</a>
		</li>	
		{% endfor %}
	{% endfor %}
{% endif %}	

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