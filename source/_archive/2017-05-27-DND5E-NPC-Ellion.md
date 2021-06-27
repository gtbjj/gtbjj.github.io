---
layout: post
title: "DND5E: Ellion Stryfe"
excerpt: "NPC"
category:
- RPG
tags:
- rpg
- d&d
- 5e
- dungeons and dragons
- npc
- ellion
- rpg_people
comments: true
---

<a href=""><img src="/images/dnd/ellion.jpg" style="max-width: 30%; height: auto; float: right; margin: 5px"></a>

**Medium humanoid (elf), neutral (various) evil**

**Armor Class** 16 (scale male)

**Hit Points** 71

**Speed** 30 ft.

**Saving Throws** Con +4, Wis +6, Cha +7

**Skills** Insight +6, Perception +6, Religion +4, Stealth +5

**Senses** darkvision 120 ft., passive perception 16

**Languages** Elvish, common, undercommon

**Challenge** 8 (3,900 XP)

| **STR** | **DEX** | **CON** | **INT** | **WIS** | **CHA** |
| 10 (+0) | 14 (+2) | 12 (+1) | 13 (+1) | 17 (+3) | 18 (+4) |

**Abilities**

***Fey Ancestry.*** Ellion has advantage on saving throws against being charmed, and magic can't put him to sleep.

***Innate Spellcasting.*** Ellion's innate spellcasting ability is Charisma (spell save DC 12).  It can innately cast the following spells, require no material components.

*At will: dancing lights*
*1/day each:  darkness, faerie fire, levitate (self only)*

***Spellcasting.*** Ellion is a 10th-level spellcaster.  His spellcasting ability is intelligence (spell save DC 14, +6 to hit with spell attacks).  He has the following spells prepared:

- *Cantrips (at will):* mage hand, minor illusion, poison spray, ray of frost
- *1st level (4 slots):* mage armor, magic missile, shield, witch bolt
- *2nd level (3 slots):* alter self, misty step, web
- *3rd level (3 slots):* fly, lightning bolt
- *4th level (3 slots):* Evard's black tentavles, greater invisibility
- *5th level (2 slots):* cloudkill

***Sunlight Sensitivity.*** While in sunlight, Ellion has disadvantage on attack rolls, as well as on Wisdom (Perception) checkst that rely on sight.

***Ghoul Army.*** At present, Ellion commands an army of 100 ghouls.  It is believed that this was a power granted to him by Cain the Necromancer, though the army has been of great use for pillaging by Lolth (see below).

**Actions**

***Staff.*** Melee Weapon Attack.  +2 to hit, 3 bludeoning damage + 3 poison damage.

***Longsword.*** Melee Weapon Attack.  +2 to hit, 4 slashing damage + 3 poison damage.

---

#### Personality & History

Ellion tends to be generally stoic and removed, so long as he knows that he is clearly in control or stronger than his opponent.  When he is out classed he tends to reduce to a snivelling welp though, his charisma and clever survival tact have gotten him out of many sticky situations and ensured his old age and enduring sruvival.

Initially a [drow mage](https://chisaipete.github.io/bestiary/creatures/drow-mage), Ellion occupied the middle eastern territories, where the moutains meet the desert, of his world.  At a relatively young age he discovered [The Entropy Tide]({% post_url 2017-05-20-DND5E-Homebrew-Entropy-Tide %}), and began researching its potential.

On his quest for power, he made an alliance with [Cain the Necromancer](https://www.dandwiki.com/wiki/Cain_the_Necromancer_(3.5e_Deity)), agreeing to find a mage worthy of captaining the ship and allowing travel to other worlds and realms for Cain to claim souls on.   When Ellion was not able to *retain proper command* of the ship's captain, Cain threatened to consume him as well.

However, Ellion hatched a plan to use his drow heritage to infiltrate the ranks of a Priesthood of [Lolth](http://forgottenrealms.wikia.com/wiki/Lolth).  Her frequent *culls of the weak* would make excellent sacrifices to Cain -- or so said Ellion.  Cain agreed to let him live.

Ellion became one of the rare males to obtain preisthood among Lolth's ranks.

---

#### Adventures

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'ellion' %}
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

#### Additional Credits:

- Drow Priestess of Lolth stats (mm 129)
- [Drow Mage stats](https://chisaipete.github.io/bestiary/creatures/drow-mage)