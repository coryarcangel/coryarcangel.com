---
layout: default
title: News
---
<a href="../">↩ Home </a>

* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.wwweblast == "Y" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.dates }}, {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.state_country }}

{% endif %}
{% endfor %}

* Press

{% assign press_list = site.data.press %}
{% for press in press_list %}
{% if press.wwweblast == "Y" %}

{% if press.URL %}
	* <a href="{{ press.URL }}">{{ press.Primary }}, {{ press.Secondary }}, {{ press.Year }}
{% else %}
	* {{ press.Primary }}, {{ press.Secondary }}, {{ press.Year }}
{% endif %}

{% endif %}	

{% endfor %}
