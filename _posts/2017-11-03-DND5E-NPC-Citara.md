---
layout: post
title: "DND5E: Citara"
excerpt: "NPC - Diablo 3 Demon Hunter"
category:
- RPG
tags:
comments: true
---

#### Citara

----

**Medium Human, chaotic good**

<a href="https://orig00.deviantart.net/4305/f/2010/301/9/f/demon_hunter_diablo_3___talia_by_shikamaru_no_kage-d31op84.jpg"><img src="/images/dnd/citara.jpg" style="float: right; width: 30%; height: auto"></a>

**Armor Class** 17 (half plate)

**Hit Points** 71

**Speed* 50 ft.

**Skills** Insight +5, Investigation +4, Perception +5, Persuasion +4, Sleight of Hand +7, Stealth +7

**Damage Resistance** Piercing and slashing from non-magical weapons.

**Immunities** Charmed, Freightened

**Senses** Blindsight 10 ft., darkvision 120 ft., passive perception 13

**Languages** Common

**Challenge** 8 (3,900 XP)

| **STR** | **DEX** | **CON** | **INT** | **WIS** | **CHA** |
| 10 (+0) | 19 (+4) | 14 (+2) | 12 (+1) | 14 (+2) | 12 (+1) |

**Abilities**

***Crimson Rite*** As a bonus action you can imbue a single weapon you hold with your own life force, temporarily reducing your maximum hit points a number equal to your character level.  These lost maximum hit points are returned once the rite fades and cannot be restored otherwise.  Until the rite fades, that weapon flares with (elemental) energy.  Attacks from that weapon deal an additional 1d6 rite damage (magical).  The rite fades after the attack.

***Primal Rite*** *Rite of the Oracle:* Rite damage is psychic type.

***Hunter's Bane*** Advantage on Wisdom (Survival) checks to track Fey, Fiends, and Undead as well as on Intelligence checks to recall information about them.  If you are actively tracking one of these creature types, you cannot be surprised by any creatures of that type.  You can only be tracking one type of creature at a time.

***Fighting Style*** *Archery:* +2 attack bonus to rolls with ranged weapons

***Blood Hunter Order*** Order of the Ghostslayer

> Cleansing Rite: You imbune your crimson rite with the vigourous spark of your spiritual vengeance.  Whenever you deal damange with your crimson rite die, you also deal an additional radiant damage equal to your Wisdom modifier.  This damage is part of your crimson rite.

***Blood Maledict (2/rest)*** *Blood Curse of the Marked:* As a bonus action, you can mark an enemy within 30 feet.  Until the end of your turn, all crimson rite damage you deal to the target is doubled.

***Multiattack***  Citara makes two attacks.

***Hand Crossbow, ranged weapon attack*** +7 to hit, range 30/120 ft. one target.  *Hit:* 7 (1d6 +4) piercing damage.

***Dagger, melee weapon attack*** +7 to hit, range 5 ft., *Hit:* 3 (1d4)

----

#### History and Personality

Citara favors dual weilding [repeating hand crossbows](https://www.dandwiki.com/wiki/Crossbow,_Hand_Repeating_(5e_Equipment))

<iframe width="560" height="315" src="https://www.youtube.com/embed/qis_X2jiXCU" frameborder="0" allowfullscreen></iframe>

----

#### Adventures

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

----

#### References

- [Drow Assassin (CR8)](https://orig00.deviantart.net/a59c/f/2015/312/c/b/drow_assassin_dnd_5e_by_ravenvonbloodimir-d9g0631.jpg)
- [Blood Hunter Class by Matthew Mercer](http://geekandsundry.com/wp-content/uploads/2015/12/Blood-Hunter-Class-1.2.pdf)