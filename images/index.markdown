---
layout: images-index
title: Images
---
<a href="../">↩ Home</a> 
{% assign images_list = site.data.images %}
{% for image in images_list %}
{% if image.x != "n"  %}
{{ image.x }}
{% assign jpeg = image.filename | split: "." | first | append: "-thumb.jpg"%}
{% if image.ee_id_show %}
{% assign shows_shows = site.data.shows | where:"ee_id_show",image.ee_id_show %}
{% for item in shows_shows %}<div class="thumbs"><a href="../shows/{{ item.url }}"><img class="lazy" data-src="../assets/thumbs/{{image.filename | split: "." | first}}-thumb.jpg" alt="…" height="{{image.h}}" width="{{image.w}}"></a></div>{% endfor %}
{% else %}
{% assign things_things = site.data.things | where:"inv_num",image.inv_num %}
{% for item in things_things %}<div class="thumbs"><a href="../things-i-made/{{ item.url }}"><img class="lazy" data-src="../assets/thumbs/{{image.filename | split: "." | first}}-thumb.jpg" alt="…" height="{{image.h}}" width="{{image.w}}"></a></div>{% endfor %}
{% endif %}
{% endif %}
{% endfor %}
<script src="../dist/lazyload.min.js"></script>
<script>
(function () {
  function logElementEvent(eventName, element) {
    console.log(Date.now(), eventName, element.getAttribute("data-src"));
  }

  var callback_enter = function (element) {
    logElementEvent("🔑 ENTERED", element);
  };
  var callback_exit = function (element) {
    logElementEvent("🚪 EXITED", element);
  };
  var callback_loading = function (element) {
    logElementEvent("⌚ LOADING", element);
  };
  var callback_loaded = function (element) {
    logElementEvent("👍 LOADED", element);
  };
  var callback_error = function (element) {
    logElementEvent("💀 ERROR", element);
    element.src = "./images/440x560-Error.webp";
  };
  var callback_finish = function () {
    logElementEvent("✔️ FINISHED", document.documentElement);
  };
  var callback_cancel = function (element) {
    logElementEvent("🔥 CANCEL", element);
  };

  var ll = new LazyLoad({
    class_applied: "lz-applied",
    class_loading: "lz-loading",
    class_loaded: "lz-loaded",
    class_error: "lz-error",
    class_entered: "lz-entered",
    class_exited: "lz-exited",
    // Assign the callbacks defined above
    callback_enter: callback_enter,
    callback_exit: callback_exit,
    callback_cancel: callback_cancel,
    callback_loading: callback_loading,
    callback_loaded: callback_loaded,
    callback_error: callback_error,
    callback_finish: callback_finish
  });
})();
</script>





