---
layout: post
title: "DND5E: Character Profile"
excerpt:  "Balfador Bombador"
category:
- RPG
tags:
- dnd5e
- d&d
- dungeons and dragons
- character profile
- steampunk
- balfador
comments: true
---

# Balfador Bombador

[Character Sheet](https://drive.google.com/file/d/0B2RH_BSaD6YPeGFKdGcyLVgwdzA/view?usp=sharing)

---

<a href="http://bancodeseries.com.br/index.php?action=userPage&uid=1000174048"><img style="float: right; max-width: 40%; height: auto; margin: 5px" src="/images/extra/balfador.jpg"></a>

#### Adventures:

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'balfador' %}
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

#### Notable Items:

---
