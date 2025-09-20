---
layout: default
title: Home
---
## About
Hi. Thx 4 the 👀. I'm a [composer](https://hiddennoise.org/){:target="_blank"}, [artist](../things-i-made/){:target="_blank"}, [curator](https://www.kunsthallesanktgallen.ch/en/exhibition/959/ALLIEATINADAY2024){:target="_blank"}, [writer](https://www.are.na/editorial/the-north-face){:target="_blank"}, [teacher](https://uit.no/studiesteder/kabelvag/filmkunstskolen), [aspiring youtuber](https://www.youtube.com/user/coryarcangel), etc, etc, living in [ Stavanger, Norway](https://www.youtube.com/watch?v=7DDfLOc-Dlc){:target="_blank"}.  

## Contact
studio AT domain of this site ;-)

## New(s)
* 🔥

	* [Arcangel Surfware is bck!](https://arcangelsurfware.biz){:target="_blank"} - SRF is back. New Cooked™ logo. "Drops" every other month. Let's go!

	* [Let's Play Majerus G3](https://rhizome.org/editorial/artbase-anthologies-002/){:target="_blank"} ([1](https://www.youtube.com/watch?v=QhQrywlzaVI){:target="_blank"}, [2](https://www.youtube.com/watch?v=jWYC5AmgZco){:target="_blank"}, [3](https://www.youtube.com/watch?v=h8_vWichxHI){:target="_blank"}, [4](https://www.youtube.com/watch?v=xO8sBle8yrE){:target="_blank"}, [5](https://www.youtube.com/watch?v=jFSLaRjlAr4){:target="_blank"}) - Majerus' laptop restored & I'm finally a Youtuber!  
					
	* [ALL I EAT IN A DAY](https://www.kunsthallesanktgallen.ch/en/exhibition/959/ALLIEATINADAY2024){:target="_blank"} - Group show curated w/ Kunsthalle Sankt Gallen — may it live on forever ✞

	* [Cookery (SRF-061)](https://cookery.cooking/){:target="_blank"} - Cook™ images and video   

	* [Hidden Noise](https://hiddennoise.org/){:target="_blank"} - Hampus Lindwall and I's concert series finally has a webpage ☯️

	* [/roʊˈdeɪoʊ/: Let's Play](https://rodeo.computer/){:target="_blank"} - AI video game playing computer   

* 🏢

	{% assign shows_list = site.data.shows %}
	{% for shows in shows_list %}
	{% if shows.wwwnews == "Y" %}

	{% if shows.live_url != "" and shows.live_url %}
	* <a href="{{ shows.live_url }}">{{ shows.dates }}, {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.state_country }}</a>
	{% else %}
	* {{ shows.dates }}, {{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.state_country }}
	{% endif %}
	
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
## [Work](work)

## [Shop](https://arcangelsurfware.biz/){:target="_blank"} 

## Subscribe

* [Are.na](https://www.are.na/cory-arcangel/new-s-w4ykdrmcuts)  
* [Mailing List](https://mailchi.mp/f06b40c4c654/subscribe)  
* [RSS](../feed.xml)  

## Socials

* [Are.na ❤️](https://www.are.na/cory-arcangel) 
* [Bsky️](https://bsky.app/profile/coryarcangel.com) 
* [Bandcamp](https://bandcamp.com/cory_arcangel) 
* [Github](https://github.com/coryarcangel)
* [Special Fish](https://special.fish/cory)
* [Youtube](https://www.youtube.com/user/coryarcangel)

<br>
{{ site.time | date: '%d/%m/%y' }}