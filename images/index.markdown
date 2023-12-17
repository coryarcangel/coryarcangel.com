---
layout: images-index
title: Images
---
<a href="../">↩ Home</a> 
{% assign images_list = site.data.images-test %}
{% for image in images_list %}
{% if image.x != "n"  %}
{{ image.x }}
{% assign jpeg = image.filename | split: "." | first | append: "-thumb.jpg"%}
{% if image.ee_id_show %}
{% assign shows_shows = site.data.shows | where:"ee_id_show",image.ee_id_show %}
{% for item in shows_shows %}<div class="thumbs"><a href="../shows/{{ item.url }}"><img src="../assets/thumbs/{{image.filename | split: "." | first}}-thumb.jpg" loading="lazy" alt="…" height="{{image.h}}" width="{{image.w}}"></a></div>{% endfor %}
{% else %}
{% assign things_things = site.data.things | where:"inv_num",image.inv_num %}
{% for item in things_things %}<div class="thumbs"><a href="../things-i-made/{{ item.url }}"><img src="../assets/thumbs/{{image.filename | split: "." | first}}-thumb.jpg" loading="lazy" alt="…" height="{{image.h}}" width="{{image.w}}"></a></div>{% endfor %}
{% endif %}
{% endif %}
{% endfor %}






