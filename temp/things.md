---
layout: default
title: Things
---
	
{% assign shows_list = site.data.shows | where: "ee_id_show","5000" %}

# Blank array
{% assign showz_list = '' | split: '' %}

# Get list of shows work is in.  
{% assign shows_thingsXshows = site.data.thingsXshows | where:"inv_num","2002-002" %}

# Grab show data from site.data.shows and smash into a new array showz_list
{% for item in shows_thingsXshows %}
	{% assign shows_shows = site.data.shows | where:"ee_id_show",item.ee_id_show %}
	{% for item2 in shows_shows %}
	{% assign showz_list = showz_list | push: item2 %}
	{% endfor %}
{% endfor %}

<hr>
# Array shows_list  
<hr>
{{ shows_list }}
<hr>  
# Array showz_list  
<hr>
{% assign showz_list = showz_list | sort: "year" | reverse %}
{{ showz_list }}