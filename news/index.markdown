---
layout: default
title: News
---
<a href="../">↩ Home </a>
* 🔥
	* [Phoebe Philo X Cory Arcangel - Fun wrkn w Phoebe Philo on SEO, etc, etc ;-) ↪](https://www.google.com/search?q=Phoebe+Philo){:target="_blank"}
	* [Let's Play Majerus G3 - Majerus' laptop restored↪](https://www.youtube.com/watch?v=QhQrywlzaVI){:target="_blank"}
	* [Schellmann edition! (buy now! 💸 ) - Finally got some Photoshop's on mirrors↪](https://schellmannart.com/exhibitions/paperless-prints){:target="_blank"}
	* [currentmood @ Outputs (buy now! 💸 ) - EDM, babies, side-chaining, etc, etc↪](https://outputs.bandcamp.com/album/sampler1){:target="_blank"}
	* [Identity Pitches w/ Stine Janvin (buy now! 💸 ) - Just tuned sweaters↪](https://primaryinformation.org/product/identity-pitches/){:target="_blank"}
	* [/roʊˈdeɪoʊ/: Let's Play - AI video game playing computer↪](https://rodeo.computer/){:target="_blank"}
	* [Related to Your Interests - 800+ YT vids of trash↪](https://rtyi.coryarcangel.com/){:target="_blank"}
* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.wwweblast == "Y" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.dates }}, {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.state_country }}

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