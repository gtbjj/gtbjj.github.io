---
layout: page
title: Climbing Posts
excerpt: ""
search_omit: true
---
<iframe src="//users.instush.com/bee-gallery-v2/?cols=3&rows=1&size=medium&border=0&round=false&space=4&sl=true&bg=transparent&brd=true&na=false&pin=true&hc=e72476&ltc=3f3f3f&lpc=ffffff&fc=ffffff&user_id=1769639109&username=savagezen&sid=-1&susername=-1&tag=-1&stype=mine&t=999999U-PODrPK3a_GOqZhPPPf2bpg9GatcxmcEE4NduTTGXJgw_yBBf5eDJ_SfDdcBTz3TjGR9UmUmLE" allowtransparency="true" frameborder="0" scrolling="no"  style="display:block;width:482px;height:166px;border:none;overflow:visible;" ></iframe>

<ul class="post-list">
{% for post in site.categories.Climbing %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
