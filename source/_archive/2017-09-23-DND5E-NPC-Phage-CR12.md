---
layout: post
title: "DND5E: Phage Elung (CR 12)"
excerpt: "NPC"
category:
- RPG
tags:
- rpg
- dnd5e
- d&d
- dungeons and dragons
- npc
- phage
- magic the gathering
- rpg_people
comments: true
---

# Phage Elung

<a href="https://www.pinterest.com/pin/298222806551995404/"><img style="float: right; max-width: 40%; height: auto; max-height: 50%; margin: 5px" src="/images/dnd/phage.jpg"></a>

---

#### Adventures:

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'phage' %}
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

- [Base Vampire Spawn, CR5](https://chisaipete.github.io/bestiary/creatures/vampire-spawn)
- [Phage Elung, CR6 - Physical Enhancements](https://homebrewery.naturalcrit.com/share/S1WtjP8SQm)
- [Phage Elung, CR12 - Spellcasting](https://homebrewery.naturalcrit.com/share/rkQfOUBmQ)

#### References:

- [Night Mother, CR12](https://i.pinimg.com/originals/04/26/c6/0426c6fdf9294d03cdef59734d4a127a.png)
- [MTG Wiki - Phage the Untouchable](https://mtg.gamepedia.com/Jeska#Phage)
- [Personality - Sabertooth (Marvel)](https://comicvine.gamespot.com/sabretooth/4005-4563/)
- [Personality - Harley Quinn (DC)](https://comicvine.gamespot.com/harley-quinn/4005-1696/)

<!--

Witch of the West: http://oz.wikia.com/wiki/Wicked_Witch_of_the_West

- CR 15
  - 157 HP
  - Spellcasting (CHA 16)
  - +5 to spells
  - Cantrips (at will): Blade Ward
  - 1st level spells (3): Sheild
  - 2nd level spells (2): Darkness
  - 3rd level spells (2): Haste
- CR 17+?
  - 175 HP
  - Spellcasting (CHA 17)
  - +11 to physical hit, +8 to spells
  - Cantrips (at will): Blade Ward
  - 1st level spells (4): Sheild
  - 2nd level spells (3): Darkness, Hold Person
  - 3rd level spells (2): Haste, Counterspell
-->
