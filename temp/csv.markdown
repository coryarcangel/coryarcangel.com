---
layout: csv
title: showsXthings
---
{%- assign shows_list = site.data.shows | sort: "year" | reverse -%}
	{%- for shows in shows_list -%}
	{%- assign things = shows.things | split: ',' -%}
	{% for thing in things %}
	{{ shows.ee_id }}, {{ shows.title }},  
	{%- assign thing_clean = thing | remove: "[" | remove: "]" -%}
	{%- assign thing_split = thing_clean | split: ' ' -%}
	{{ thing_split.[0] }},
	{%- assign thing_split_inv = thing_split.[1] | split: '-' -%}
	{{ thing_split_inv.[0] }}-{{ thing_split_inv.[1] }}   
	{%- endfor -%}
{% endfor %}
