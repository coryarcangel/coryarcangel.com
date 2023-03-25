---
layout: things-i-made-index
title: Things I Made 
---
<a href="../">↩ Home</a> 
{% assign images_list = site.data.images %}
{% for image in images_list %}<a href="{{image.url}}"><img src="../assets/imgs/{{image.filename}}" height="200" loading="lazy"></a>{% endfor %}