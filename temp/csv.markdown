---
title: Images CSV
---

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}       
    {% if shows.imgs %}
	{% assign images = shows.imgs | split: ',' %}
	{% for image in images %}
  	{{image}},{{shows.url}},{{shows.year}}<br>
  	{% endfor %}
	{% endif %}	
{% endfor %}

{% assign things_list = site.data.things %}
{% for things in things_list %}       
    {% if things.imgs %}
	{% assign images = things.imgs | split: ',' %}
	{% for image in images %}
  	{{image}},{{things.url}},{{things.year}}<br>
  	{% endfor %}
	{% endif %}	
{% endfor %}

