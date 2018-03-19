---
layout: page
title: "D&D People"
excerpt: ""
search_omit: false
---

<div style="height: 400px; width: 65%; overflow: scroll; float: left">
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