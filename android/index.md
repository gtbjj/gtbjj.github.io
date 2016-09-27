---
layout: page
title: Android Posts
excerpt: ""
search_omit: true
---

Data spreadsheets, graphs, and screenshots can be found on the <a href="/data_screens/">data and screens page</a>.

<ul class="post-list">
{% for post in site.categories.Android %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
