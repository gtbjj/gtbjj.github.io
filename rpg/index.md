---
layout: page
title: RPG Posts
excerpt: ""
search_omit: true
---

Amusing ourselves with fantasy, projection, and escapism with pens, paper, and dice.  This is the "wiki" for the D&D (5e) world my campaign and I have created.

<div style="width: 65%; float: left">
  <h3><u>All RPG Posts</u></h3>
</div>
<div style="width: 25%; float: right">
  <h3><u>D&D 5E Wiki</u></h3>
</div>

<div style="height: 400px; width: 65%; overflow: scroll; float: left">
  <ul class="post-list">
  {% for post in site.categories.RPG %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>

<div style="height: 400px; width: 30%; overflow: scroll; float: right; text-align: center">
  <p><a href="/rpg_people"><h3>People</h3></a></p>
  <p><a href="/rpg_places"><h3>Places & Maps</h3></p>
  <p><a href="/rpg_items"><h3>Items</h3></a></p>
  <p><a href="/rpg_lore"><h3>Lore</h3></a></p>
  <p><a href="/rpg_quests"><h3>Quests</h3></a></p>
</div>