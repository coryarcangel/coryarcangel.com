---
layout: default
title: News
---
<a href="../">↩ Home </a>
* 🔥
	* [Let's Play Majerus G3 - Majerus' laptop restored!↪](https://coryarcangel.com/shows/715){:target="_blank"}
	* [Schellmann edition! (buy now! 💸 ) - Finally got some Photoshop's on mirrors↪](https://schellmannart.com/exhibitions/paperless-prints){:target="_blank"}
	* [currentmood @ Outputs (buy now! 💸 ) - EDM, babies, side-chaining, etc, etc↪](https://outputs.bandcamp.com/album/sampler1){:target="_blank"}
	* [Identity Pitches w/ Stine Janvin (buy now! 💸 ) - Just tuned sweaters↪](https://primaryinformation.org/product/identity-pitches/){:target="_blank"}
	* [/roʊˈdeɪoʊ/: Let's Play - AI video game playing computer↪](https://rodeo.computer/){:target="_blank"}
	* [Related to Your Interests - 800+ YT vids of trash↪](https://rtyi.coryarcangel.com/){:target="_blank"}
	* [Tony Conrad: and the Mind of the World - The 👑 Tony Conrad on the piano↪](http://musicandthemindofthe.world/){:target="_blank"}
* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.wwweblast == "Y" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.dates }}, {{ shows.state_country }}

{% endif %}
{% endfor %}

* 🗞

{% assign press_list = site.data.press %}
{% for press in press_list %}
{% if press.wwwnews == "Y" %}

{% if press.URL %}
	* <a href="{{ press.URL }}">{{ press.Primary }}, {{ press.Secondary }}, {{ press.Year }}
{% else %}
	* {{ press.Primary }}, {{ press.Secondary }}, {{ press.Year }}
{% endif %}

{% endif %}	

{% endfor %}