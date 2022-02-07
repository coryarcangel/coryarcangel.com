---
layout: print
title: coryarcangel.com the book
---
coryarcangel.com 


{% assign things_list = site.data.things | sort: "year" | reverse %}
{% for things in things_list %}
{{ things.title }}  
{{ things.display_year }}  
{{ things.medium }}  
{{ things.dims }}
{{ things.pitch }}  
{{ things.ps }} 
<hr> 
{% endfor %}

