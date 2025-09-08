---
layout: default
title: Home
---
* About: Hi!, I'm a [composer](https://hiddennoise.org/){:target="_blank"}, [artist](../things-i-made/){:target="_blank"}, [curator](https://www.kunsthallesanktgallen.ch/en/exhibition/959/ALLIEATINADAY2024){:target="_blank"}, [writer](https://www.are.na/editorial/the-north-face){:target="_blank"}, [teacher](https://uit.no/studiesteder/kabelvag/filmkunstskolen), [aspiring youtuber](https://www.youtube.com/user/coryarcangel), etc, etc, living in [ Stavanger, Norway](https://www.youtube.com/watch?v=7DDfLOc-Dlc){:target="_blank"}. 

* New(s)↴
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

* [Shop](https://arcangelsurfware.biz/){:target="_blank"} ↴  
[<img width="244" height="260" alt="srf-2025-logo" src="../assets/srf/srf-2025-logo.gif">](https://arcangelsurfware.biz/){:target="_blank"}

* "Art" ↴
	* [Things](things-i-made)  
	* [Shows](shows)  
	* [Images](images) (some recents below) ↴ 
		
		{% for image in site.data.images limit:8 %}
		{% assign jpeg = image.filename | split: "." | first | append: "-thumb.jpg"%}
		{% if image.ee_id_show %}
		{% assign shows_shows = site.data.shows | where:"ee_id_show",image.ee_id_show %}
		{% for item in shows_shows %}<div class="thumbs"><a href="../shows/{{ item.url }}"><img src="../assets/thumbs/{{image.filename | split: "." | first}}-thumb.jpg" loading="lazy" alt="…" height="{{image.h}}" width="{{image.w}}"></a></div>{% endfor %}
		{% else %}
		{% assign things_things = site.data.things | where:"inv_num",image.inv_num %}
		{% for item in things_things %}<div class="thumbs"><a href="../things-i-made/{{ item.url }}"><img src="../assets/thumbs/{{image.filename | split: "." | first}}-thumb.jpg" loading="lazy" alt="…" height="{{image.h}}" width="{{image.w}}"></a></div>{% endfor %}
		{% endif %}
		{% endfor %}  

* Contact: studio AT coryarcangel DOT com

* Loans: [Electronic Art Intermix](https://www.eai.org/artists/cory-arcangel/titles){:target="_blank"}, [Lisson Gallery](https://www.lissongallery.com/artists/cory-arcangel){:target="_blank"}, [Thaddeus Ropac Gallery](https://ropac.net/artists/25-cory-arcangel/){:target="_blank"} & above ;-)

* Subscribe: [Are.na](https://www.are.na/cory-arcangel/new-s-w4ykdrmcuts), [Mailing List](https://mailchi.mp/f06b40c4c654/subscribe), [RSS](../feed.xml)  

* Find me: [Are.na ❤️](https://www.are.na/cory-arcangel), [Instagram](https://instagram.com/arcangelsurfware), [X](https://x.com/cory_arcangel), [Bandcamp](https://bandcamp.com/cory_arcangel), [Github](https://github.com/coryarcangel), [Special Fish](https://special.fish/cory), [Youtube](https://www.youtube.com/user/coryarcangel)
	 
* Last updated: {{ site.time | date: '%d/%m/%y' }}