---
layout: page
title: "D&D People"
excerpt: ""
search_omit: false
---

<div style="height: 400px; width: 100%; overflow: scroll">
  <iframe src="https://drive.google.com/embeddedfolderview?id=0B2RH_BSaD6YPN1FySkNyM2JuSms#list" style="width:100%; height:600px; border:0;"></iframe>
  <ul class="posts">
  {% assign count = 0 %}
  {% for post in site.posts %}
    {% if post.tags contains 'rpg_people' %}
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