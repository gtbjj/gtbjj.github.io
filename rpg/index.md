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
  <p style="color: white; background-color: black; border-radius: 10px">Cast / Characters</p>
  <p><a href="http://rockandcode.ga/rpg/DND5E-Profile-Digoria/"><img title="Digoria Antica" src="../images/dnd/digoria.jpg" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <p><a href="http://rockandcode.ga/rpg/DND5E-Profile-Balfador/"><img title="Balfador Bombador" src="../images/dnd/balfador.jpg" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <p><a href="http://rockandcode.ga/rpg/DND5E-NPC-Corros/"><img title="Corros" src="../images/dnd/corros.jpg" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <p><a href="http://rockandcode.ga/rpg/DND5E-NPC-Ellion/"><img title="Ellion Stryfe" src="../images/dnd/ellion.jpg" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <p><a href="http://rockandcode.ga/rpg/DND5E-NPC-Phage/"><img title="Phage Elung" src="../images/dnd/phage.jpg" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <p><a href="https://drive.google.com/file/d/0BwQNloQbtainM0g2OTZTMU9EOUk/view?usp=sharing"><img title="Link" src="../images/dnd/link.png" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <p><a href="https://docs.google.com/spreadsheets/d/1p-WQgYI7Ct9d_1YGmA7DXQ6TMRv-c2dUVo1vQdtRU7M/edit?usp=sharing"><img title="Raiden" src="../images/mhrp/raiden.jpg" style="max-width: 60%; height: auto; border-raidus: 10px"></a></p>
  <p><a href="https://drive.google.com/file/d/0B3L-FHD8lwfVdTBzblJXTU1RSnc/view?usp=sharing"><img title="Cas" src="../images/dnd/cas.jpg" style="max-width: 60%; height: auto; border-radius: 10px"></a></p>
  <!--
  <p><a><img title="Altorin" src="../images/dnd/altorin.jpg" style="max-width: 60%; height: auto; border-raidus: 10px"></a></p>
  <p><a><img title="Karasu"></a></p>
  <p><a href="https://drive.google.com/file/d/0B2RH_BSaD6YPTWxtd3M2cHkwVGs/view?usp=sharing"><img title="Alodel Erwer"></a></p>
  <p><a href="https://drive.google.com/file/d/0B2RH_BSaD6YPbTNNQTBudmtfc2M/view?usp=sharing"><img title="Alushiv Vandel"></a></p>
  <p><a href="https://drive.google.com/file/d/0B2RH_BSaD6YPS25GTG14QXlNY1E/view?usp=sharing"><img title="Panapos Thorivian"></a></p>
  -->
</div>
