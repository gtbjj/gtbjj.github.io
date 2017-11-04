---
layout: post
title: "DND5E:  Gachev"
excerpt: "NPC - Diablo 3 Monk"
category:
- RPG
tags:
comments: true
---

#### Gachev

----

<a href="http://img3.mmo.mmo4arab.com/news/2011/01/31/co/co/3.jpg"><img src="/images/dnd/gachev.jpg" style="float: right; height: auto; width: 30%"></a>

**Medium Humanoid (half-dwarf), lawful good**

**Armor Class** 17

**Hit Points**  91

**Speed** 30

**Saving Throws**  Dex +7, Wis +6

**Senses** Passive Perception 16

**Languages** Common

**Callenge** 8 (3,900 XP)

| **STR** | **DEX** | **CON** | **INT** | **WIS** | **CHA** |
| 14 (+2) | 19 (+4) | 15 (+2) | 12 (+1) | 17 (+3) | 13 (+1) |


**Abilities**

***Unarmored Defense***  While Gachev is wearing no armor and wielding no shield, his AC includes his Wisdom modifier.

**Actions**

***Multiattack***  Gachev makes three attacks:  two with his unarmed strikes and one with his fire kick.

***Unarmed Strike***  *Melee Weapon Attack:*  +7 to hit, reach 5 ft., one target.  *Hit*: 11 (2d6 +4) bludeoning damage.

***Fire Kick***  *Melee Weapon Attack:* +7 to hit, reach 5ft., one target.  *Hit:*  11 (2d6 +4) bludeoning damage plus 14 (4d6) fire damage.  If the target is a creature it must succeed on a DC 14 Strength saving throw or be knocked prone.

***Fury of the Five Spires (Recharge 5-6)***  Gachev makes five unarmed strike attacks against one target.  The target must hten make a DC 10 Constitution saving throw with a +1 DC for every attack that hit.  On a failed save the target is knocked unconscious until the end of Gachev's next turn.

**Reactions**

***Firey Block***  Gachev adds 5 to his AC against one melee attack that would hit him.  To do so, he must see the attacker.  If the attack misses, the attacker takes 7 (2d6) fire damage.

----

#### History and Personality

<iframe width="560" height="315" src="https://www.youtube.com/embed/4cJfxhBgq8c" frameborder="0" allowfullscreen></iframe>

----

#### Adventures

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

----

#### References

- [Master of the Five Spires](https://i.imgur.com/HIvPzSj.jpg))