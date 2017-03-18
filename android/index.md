---
layout: page
title: Android
excerpt: ""
search_omit: true
---

Adventures in Android programming and tinkering.  Featured projects include a [kernel for the Nexus 6P](https://github.com/gtbjj/kernel_huawei_angler) and an [AOSP ROM for the Nexus 6P](https://github.com/gtbjj/aosp).  See also the <a href="/data_screens/">data and screenshots page</a>.

<div style="height: 400px; width: 100%; overflow: scroll">
  <ul class="post-list">
  {% for post in site.categories.Android %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>
