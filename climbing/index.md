---
layout: page
title: Climbing Posts
excerpt: ""
search_omit: true
---

<iframe 
src="//users.instush.com/accordion-zoom/?w=700&size=50&border=6&shadow=true&crowded=false&sl=true&bg_item=ffffff&bg=ffffff&lpc=ffffff&hc=e72476&ltc=3f3f3f&user_id=1769639109&username=southeastdirtbag&sid=-1&susername=-1&tag=-1&stype=mine&t=999999U-PODrPK3a_GOqZhPPPf2ZHb2cGAjdMaDQeAhLA9qmTL99xaxeABzN6sqKf-cmuzl9PJY7GkWTA" 
allowtransparency="true" frameborder="0" scrolling="no"  
style="display:block;width:700px;height:224px;border:none;overflow:visible;" 
></iframe>

<ul class="post-list">
{% for post in site.categories.Climbing %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
