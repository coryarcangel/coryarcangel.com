---
layout: shows-index
title: Shows
---
<a href="../">↩ Home </a>
* Shows
	* {% assign shows_list = site.data.shows %}{% for shows in shows_list %}{% if shows.status == "news" %}<a href="../shows/{{ shows.url }}">{{ shows.venue }}, <i>{{ shows.title }}</i>, {{ shows.year }}{% endif %}{% endfor %}
* Still 🔥
	* [Identity Pitches w/ Stine Janvin (buy now!)](https://primaryinformation.org/product/identity-pitches/)
	* [Related to your interests (online now!)](https://www.youtube.com/channel/UC_LfMr7ffUG9q5M3UuxmF0Q/videos)
* Press
	* [Cory Arcangel @  Otoliths in Flux Podcast](https://stegi.radio/show/artist-talk-cory-arcangel-2023-10-05) 






