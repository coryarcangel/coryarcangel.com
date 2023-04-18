---
layout: images-index
title: Images
---
<a href="../">↩ Home</a> 
{% assign images_list = site.data.images %}
{% for image in images_list %}<a href="../{% if image.exhibition == "X"  %}shows/{% else %}things-i-made/{% endif %}{{image.url}}"><img src="../assets/imgs/{{image.filename}}" height="200" loading="lazy"></a>{% endfor %}





	