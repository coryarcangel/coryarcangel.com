---
layout: default
title: News
---
<a href="../">↩ Home </a>

* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.status == "news" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.dates }}, {{ shows.state_country }}, {{ shows.year }}

{% endif %}
{% endfor %}

* Press

{% assign press_list = site.data.press %}
{% for press in press_list %}

{% if press.URL %}
	* <a href="{{ press.URL }}">{{ press.Primary }}, {{ press.Secondary }}, {{ press.Year }}
{% else %}
	* {{ press.Primary }}, {{ press.Secondary }}, {{ press.Year }}
{% endif %}
	
{% endfor %}
