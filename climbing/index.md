---
layout: page
title: Climbing Posts
excerpt: ""
search_omit: true
---

<!-- LightWidget WIDGET --><script src="//lightwidget.com/widgets/lightwidget.js"></script><iframe 
src="//lightwidget.com/widgets/d6c004bac119573b9bf59c47eea394ce.html" id="lightwidget_d6c004bac1" name="lightwidget_d6c004bac1"  
scrolling="no" allowtransparency="true" class="lightwidget-widget" style="display: block; margin-left: auto; margin-right: auto;width: 40%; 
border: 0; overflow: hidden;"></iframe>

<ul class="post-list">
{% for post in site.categories.Climbing %} 
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
{% endfor %}
</ul>
