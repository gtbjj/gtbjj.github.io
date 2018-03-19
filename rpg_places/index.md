---
layout: page
title: D&D Places & Maps
excerpt: ""
search_omit: false
---

<div style="height: 400px; width: 65%; overflow: scroll; float: left">
  <ul class="posts">
  {% assign count = 0 %}
  {% for post in site.posts %}
    {% if post.tags contains 'rpg_place' %}
        {% assign count = count|plus:1 %}
        <div class="post_info">
          <li>
            <a href="{{ post.url }}">{{ post.title }}</a>
          </li>
        </div>
    {% endif %}
  {% endfor %}
  </ul>
</div>

<div style="height: 400px; width: 30%; overflow: scroll; float: right">
  <iframe src="https://drive.google.com/embeddedfolderview?id=1p--sIOsnkTAVLg4XmEH1ByT09QtzK7Hp" style="width:100%; height:600px; border:0;"></iframe>
</div>