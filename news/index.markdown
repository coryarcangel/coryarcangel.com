---
layout: default
title: News
---
<a href="../">↩ Home </a>
* 🔥
	* [Let's Play Majerus G3↪](https://rhizome.org/editorial/artbase-anthologies-002/){:target="_blank"} - Majerus' laptop restored & I'm finally a Youtuber!  
	* [ALL I EAT IN A DAY↪](https://www.kunsthallesanktgallen.ch/en/exhibition/959/ALLIEATINADAY2024){:target="_blank"} - Group show curated w/ Kunsthalle Sankt Gallen — may it live on forever ✞
	* [Cookery (SRF-061)↪](https://cookery.cooking/){:target="_blank"} - Cook™ images and video   
	* [Phoebe Philo X Cory Arcangel↪](https://www.google.com/search?q=Phoebe+Philo){:target="_blank"} - Fun wrkn w Phoebe Philo on SEO, etc, etc ;-)  
	* [/roʊˈdeɪoʊ/: Let's Play↪](https://rodeo.computer/){:target="_blank"} - AI video game playing computer   
	* [Related to Your Interests↪](https://rtyi.coryarcangel.com/){:target="_blank"} - 800+ YT vids of trash  

* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.wwwnews == "Y" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.dates }}, {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.state_country }}

{% endif %}
{% endfor %}

* Press

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