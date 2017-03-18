---
layout: page
title: Linux
excerpt: ""
search_omit: true
---

Playing system admin on the weekends and learning about Linux and Open Source Software.  Many useful [scripts](https://github.com/gtbjj/scripts), [configuration files](https://github.com/gtbjj/dotfiles), tools, and guides can be found in [my GitHub repositories](https://github.com/gtbjj?tab=repositories).  See also the <a href="/data_screens/">data and screens page</a>.

<div style="height: 400px; width: 100%; overflow: scroll">
  <ul class="post-list">
  {% for post in site.categories.Linux %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>
