---
layout: post
title: "DND5E: Altorin Ravora"
excerpt: "NPC"
category:
- RPG
tags:
- rpg
- dnd
- 5e
- dungeons and dragons
- npc
- altorin
- rpg_people
comments: true
---

<a href="https://dviw3bl0enbyw.cloudfront.net/uploads/forum_attachment/file/134120/kolvir_comm_by_yamao-d6uy0t8.jpg"><img src="/images/dnd/altorin.jpg" style="max-width: 30%; height: auto; float: right"></a>

#### Adventures

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'altorin' %}
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

---

**Stat Blocks and Versions:**

- [Base Knight, NPC CR3](https://chisaipete.github.io/bestiary/creatures/knight))
- [Altorin Ravora, NPC CR6](https://homebrewery.naturalcrit.com/share/SkP6jcbKQm)
- [Altorin Ravora, CR8 - converted to Ranger PC](https://homebrewery.naturalcrit.com/share/By-NayMFQX)