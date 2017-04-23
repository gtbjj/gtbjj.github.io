---
layout: page
title: RPG Posts
excerpt: ""
search_omit: true
---

Amusing myself with fantasy, projection, and escapism somewhere between fan fiction and proper pen-and-paper role playing games.

<div style="height: 400px; width: 100%; overflow: scroll">
  <ul class="post-list">
  {% for post in site.categories.RPG %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>
