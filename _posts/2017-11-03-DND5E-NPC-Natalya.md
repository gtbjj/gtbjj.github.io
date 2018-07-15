---
layout: post
title: "DND5E: Natalya"
excerpt: "NPC"
category:
- RPG
tags:
- d&D
- 5e
- diablo
- rpg_people
- npc
comments: true
---

#### Natalya Josen

----

<a href="https://orig00.deviantart.net/4305/f/2010/301/9/f/demon_hunter_diablo_3___talia_by_shikamaru_no_kage-d31op84.jpg"><img src="/images/dnd/natalya.jpg" style="float: right; width: 30%; height: auto"></a>

#### Adventures:

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'citara' %}
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

- [Drow Assassin (original NPC model)](https://pre00.deviantart.net/00e8/th/pre/f/2015/312/c/b/drow_assassin_dnd_5e_by_ravenvonbloodimir-d9g0631.jpg)
- [Natalya Josen, CR8 - converted to Blood Hunter PC](https://homebrewery.naturalcrit.com/share/SkA9gUBQm)
- [Natalya Josen, CR9](https://homebrewery.naturalcrit.com/share/HkWnFrG_Q7)

#### References:

- [Blood Hunter Class by Matthew Mercer](http://www.dmsguild.com/product/170777/Blood-Hunter-Class?term=blood+hunter?affiliate_id=237976)
- [Diablo 3 Short Story - Demon Hunter](https://us.diablo3.com/en/game/lore/short-story/demon-hunter/)