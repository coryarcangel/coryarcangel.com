---
layout: csv
title: showsXthings
---
{% assign shows_list = site.data.shows | sort: "year" | reverse %}
	{% for shows in shows_list %}
	{{ shows.ee_id }}, 
	{{ shows.title }},
	{% assign things = shows.things | split: ',' %}
	{% for thing in things %}
		{% assign thing_clean = thing | remove: "[" | remove: "]" %}
		{% assign thing_split = thing_clean | split: ' ' %}
		{{ thing_split.[0] }},{{ thing_split.[1] }}
	{% endfor %}
{% endfor %}
