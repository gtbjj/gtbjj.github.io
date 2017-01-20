---
layout: page
title: Climbing Posts
excerpt: ""
search_omit: true
---

<iframe 
src="//users.instush.com/mini-slide-show/?user_id=1769639109&username=savagezen&sid=-1&susername=-1&tag=-1&stype=mine&t=999999U-PODrPK3a_GOqZhPPPf2WzMHqCcxM3y5bouiLcTljpO9a-yZ7JKfeK736jVyhNJZApBTUW-ZoY" 
allowtransparency="true" frameborder="0" 
scrolling="no"  
style="margin-left:30%;display:block;width:40%;height:306px;border:none;overflow:visible;" 
></iframe>

<ul class="post-list">
{% for post in site.categories.Climbing %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
