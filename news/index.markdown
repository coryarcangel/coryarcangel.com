---
layout: default
title: News
---
<a href="../">↩ Home </a>
* 🔥
	* [Identity Pitches w/ Stine Janvin (buy now!) - Just tuned sweaters↪](https://primaryinformation.org/product/identity-pitches/){:target="_blank"}
	* [/roʊˈdeɪoʊ/: Let's Play - AI video game playing computer↪](https://rodeo.computer/){:target="_blank"}
	* [Related to Your Interests - 800+ YT vids of trash↪](https://rtyi.coryarcangel.com/){:target="_blank"}
	* [Tony Conrad: Music and the Mind of the World - The 👑 Tony Conrad on the piano↪](http://musicandthemindofthe.world/){:target="_blank"}
* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.status == "news" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.dates }}, {{ shows.state_country }}, {{ shows.year }}

{% endif %}
{% endfor %}