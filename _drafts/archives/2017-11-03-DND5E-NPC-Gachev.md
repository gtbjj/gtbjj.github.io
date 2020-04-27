---
layout: post
title: "DND5E:  Gachev Zhota"
excerpt: "NPC"
category:
- RPG
tags:
- d&d
- 5e
- rpg
- npc
- rpg_people
- diablo
- monk
comments: true
---

#### Gachev Zhota

<a href="http://img3.mmo.mmo4arab.com/news/2011/01/31/co/co/3.jpg"><img src="/images/dnd/gachev.jpg" style="float: right; height: auto; width: 30%"></a>

----

#### Adventures:

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'gachev' %}
    {% if count < 20 %}
      {% assign count = count|plus:1 %}
      <div class="post_info">
        <li>
          <a href="{{ post.url }}">{{ post.title }}</a>
        </li>
      </div>
    {% endif %}
  {% endif %}
{% endfor %}
</ul>

#### Stat Blocks and Versions:

- [Base Monk of Five Spires, D&Dnext CR8](https://imgur.com/HIvPzSj)
- [Gachev Zhota, CR8 - converted to PC monk](https://homebrewery.naturalcrit.com/share/rkZIkZLB7X)
- [Gachev Zhota, CR9](https://homebrewery.naturalcrit.com/share/rJgEFlF7m)

#### References:

- [Diablo 3 Short Story - Monk](https://us.diablo3.com/en/game/lore/short-story/monk/)