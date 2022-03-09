---
layout: print
title: coryarcangel.com the book
---
{% assign things_list = site.data.things | where: "year", "2020" | sort: "year" | reverse %}
coryarcangel.com
2022
{% for things in things_list %}
<h1>{{ things.title }}</h1>  
{{ things.display_year }}  
{{ things.medium }}  
{{ things.dims }}  
{{ things.pitch }}  
{{ things.ps }} 
{% if page.imgs != "" %}
	{% assign images = things.imgs | split: ',' %}	
  	<img src="../assets/imgs/{{ images[0] }}">	
{% else %}	
	<img src="../assets/x.svg">
{% endif %}	

{% endfor %}

