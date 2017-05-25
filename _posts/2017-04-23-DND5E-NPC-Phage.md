---
layout: post
title: "DND5E: Character Profile"
excerpt: "Phage Elung"
category:
- RPG
tags:
- rpg
- dnd5e
- d&d
- dungeons and dragons
- character profile
- phage
- magic the gathering
comments: true
---

# Phage Elung

---

<a href="https://www.pinterest.com/pin/298222806551995404/"><img style="float: right; max-width: 40%; height: auto; max-height: 50%; margin: 5px" src="/images/extra/phage.jpg"></a>

**Medium undead, chaotic evil**

**Armor Class** 15 (natural armor)

**Hit Points** 82

**Speed** 30 ft.

**Saving Throws** Dex +6, Wis +3

**Skills** Acrobatics +5, Perception +2, Steath +5

**Senses** darkvision 60 ft., passice Perception 13

**Languages** common, elvish, drow sign

**Challenge** 6 (2,300 XP)

| **STR** | **DEX** | **CON** | **INT** | **WIS** | **CHA** |
| 19 (+4) | 16 (+3) | 16 (+3) | 11 (+0) | 10 (+0) | 12 (+1) |

***Regeneration.*** The vampire regains 10 hit points at the start of its turn if it has at least 1 hit point and isn’t in sunlight or running water. If the vampire takes radiant damage or damage from holy water, this trait doesn’t function at the start of the vampire’s next turn.

***Spider Climb.*** The vampire can climb difficult surfaces, including upside down on ceilings, without needing to make an ability check.

***Vampire Weakness.*** The vampire has the following flaws: Forbiddance. The vampire can’t enter a residence without an invitation from one of the occupants. Harmed by Running Water. The vampire takes 20 acid damage when it ends its turn in running water. Stake to the Heart. The vampire is destroyed if a piercing weapon made of wood is driven into its heart while it is incapacitated in its resting place. Sunlight Hypersensitivity. The vampire takes 20 radiant damage when it starts its turn in sunlight. While in sunlight, it has disadvantage on attack rolls and ability checks.

***Hearthstone Escape.*** Phage's mother was a night hag and gave her a hearthstone.  Roll 1d10, if odd Phage disappears into etherreal vapor, if odd the ability fails.  This ability automatically succeeds if Phage is below 10 HP.

**Actions**

***Multiattack.*** The vampire makes two attacks, only one of which can be a bite attack.

***Claws.*** Melee Weapon Attack: +7 to hit, reach 5 ft., one creature. Hit: 9 (2d4 + 4) slashing damage. Instead of dealing damage, the vampire can grapple the target (escape DC 13).

***Bite.*** Melee Weapon Attack: +7 to hit, reach 5 ft., one willing creature, or a creature that is grappled by the vampire, incapacitated, or restrained. Hit: 7 (1d6 + 4) piercing damage plus 7 (2d6) necrotic damage. The target’s hit point maximum is reduced by an amount equal to the necrotic damage taken, and the vampire regains hit points equal to that amount. The reduction lasts until the target finishes a long rest. The target dies if this effect reduces its hit point maximum to 0.

#### Notable Items:

- [Hearthstone](https://www.dandwiki.com/wiki/Hearthstone_(5e_Equipment))
- [Ring of Warmth](https://open5e.com/equipment/magic-items/ring-of-warmth.html)
- [Gauntlets of Ogre Power](https://roll20.net/compendium/dnd5e/Gauntlets%20of%20Ogre%20Power#content)

---

#### Adventures

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

---
