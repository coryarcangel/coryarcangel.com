---
layout: default
title: News
---
<a href="../">↩ Home </a>
* 🔥
	* [Identity Pitches w/ Stine Janvin (buy now!)](https://primaryinformation.org/product/identity-pitches/)
* Shows

{% assign shows_list = site.data.shows %}
{% for shows in shows_list %}
{% if shows.status == "news" %}

	* <a href="../shows/{{ shows.url }}">{{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.type }}, {{ shows.dates }}, {{ shows.state_country }}, {{ shows.year }}

{% endif %}
{% endfor %}

* Press
	* [Otoliths in Flux Podcast](https://stegi.radio/show/artist-talk-cory-arcangel-2023-10-05){:target="_blank"}
	* [On John Knecht’s The Possible Fog of Heaven, Artforum](https://www.artforum.com/print/202305/cory-arcangel-on-john-knecht-s-the-possible-fog-of-heaven-1993-90442){:target="_blank"} 





