---
layout: page
title: Android
excerpt: ""
search_omit: true
---

Adventures in Android programming and tinkering.  Featured projects include a [kernel for the Nexus 6P](https://github.com/savagezen/kernel_huawei_angler) and an [AOSP ROM for the Nexus 6P](https://github.com/savagezen/aosp).  See also the <a href="/data_screens/">data and screenshots page</a>.

<div style="height: 400px; width: 65%; overflow: scroll; float: left">
  <ul class="post-list">
  {% for post in site.categories.Android %} 
    <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span>{% if post.excerpt %} <span class="excerpt">{{ post.excerpt | remove: '\[ ... \]' | remove: '\( ... \)' | markdownify | strip_html | strip_newlines | escape_once }}</span>{% endif %}</a></article></li>
  {% endfor %}
  </ul>
</div>

<div style="height: 400px; width: 30%; overflow: scroll; float: right; text-align: center">
  <p style="color: white; background-color: black; border-radius: 10px">Projects</p>
  <p><a href="https://github.com/savagezen/angler">aFlash Kernel</a></p>
  <p><a href="https://github.com/savagezen/angler">Pure AOSP</a></p>
  <p><a href="https://github.com/savagezen/x205ta">ASUS X205TA Help Guides</a></p>
  <p><a href="https://github.com/savagezen/pkgbuild">AUR Packages</a></p>
  <p><a href="https://github.com/savagezen/dnd-tools">dnd-tools</a></p>
  <p><a href="https://github.com/haedickecounseling/haedickecounseling.github.io">haedickecounseling.com</a></p>
  <p><a href="https://rockandcode.ga">rockandcode.ga</a></p>
  <p style="color: white; background-color: #ABB2B9; border-radius: 10px"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=CGPJERK69W5T6">Support these projects.</a></p>
</div>
