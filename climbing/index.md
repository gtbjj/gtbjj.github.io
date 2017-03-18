---
layout: page
title: Rock Climbing
excerpt: ""
search_omit: true
---

<div style="height: auto; width: 30%; float: right">
  <iframe 
src="//users.instush.com/side-bar/?rows=3&round=true&circle=false&pin=true&user_id=1769639109&username=savagezen&sid=-1&susername=-1&tag=-1&stype=mine&t=999999U-PODrPK3a_GOqZhPPPf2WzMHqCcxM3y5bouiLcTljpO9a-yZ7JKfeK736jVyhNJZApBTUW-ZoY" 
allowtransparency="true" frameborder="0" scrolling="no"  
style="display:block;width:160px;height:510px;border:none;overflow:visible;" ></iframe>
</div>

<div style="height: 510px; width: 65%; overflow: scroll; float: left">
  <ul class="post-list">
  {% for post in site.categories.Climbing %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>
