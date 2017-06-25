---
layout: page
title: RPG Posts
excerpt: ""
search_omit: true
---

Amusing myself with fantasy, projection, and escapism somewhere between fan fiction and proper pen-and-paper role playing games.

<div style="height: 400px; width: 65%; overflow: scroll; float: left">
  <ul class="post-list">
  {% for post in site.categories.RPG %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>

<div style="height: 400px; width: 30%; overflow: scroll; float: right; text-align: center">
  <p style="color: white; background-color: black; border-radius: 10px">Characters</p>
  <p><strong><a href="https://drive.google.com/file/d/0B2RH_BSaD6YPNFlPQzZKbWc5akk/view?usp=sharing">Digoria Antica</a></strong><br/>
  Level 9, Tiefling, Sorceress-Fighter</p>
  <p><strong><a href="https://drive.google.com/file/d/0B2RH_BSaD6YPeGFKdGcyLVgwdzA/view?usp=sharing">Balfador Bombador</a></strong><br/>
  Level 3, Hill Dwarf, Rogue
</div>
