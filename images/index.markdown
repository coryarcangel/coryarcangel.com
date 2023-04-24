---
layout: images-index
title: Images
---
<a href="../">↩ Home</a> 

{% assign images_list = site.data.images %}
{% for image in images_list %}
{% if image.ee_id_show %}
{% assign shows_shows = site.data.shows | where:"ee_id_show",image.ee_id_show %}
{% for item in shows_shows %}<div class="thumbs"><a href="../shows/{{ item.url }}"><img src="../assets/imgs/{{image.filename}}" height="200" loading="lazy"></a></div>{% endfor %}
{% else %}
{% assign things_things = site.data.things | where:"inv_num",image.inv_num %}
{% for item in things_things %}<div class="thumbs"><a href="../things-i-made/{{ item.url }}"><img src="../assets/imgs/{{image.filename}}" height="200" loading="lazy"></a></div>{% endfor %}
{% endif %}
{% endfor %}






```	```