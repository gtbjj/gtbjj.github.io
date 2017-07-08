---
layout: post
title: "DND5E: Karasu"
excerpt: "NPC"
category:
- RPG
tags:
- rpg
- dnd
- 5e
- dungeons and dragons
- npc
- karasu
comments: true
---

<a href="http://s1.zerochan.net/Karasu.600.690477.jpg"><img src="/images/dnd/karasu.jpg" style="max-width: 30%; height: auto; float: right"></a>

**Medium Undead / Neutral Evil**

**Armor Clas** 16 (natural armor)

**Hit Points** 144 (17d8 + 68)

**Speed** 30 ft.

**Saving Throws** Dex +9, Wis +7, Cha +9

**Skills** Perception +7, Stealth +9

**Damage Resistances** necrotic, bludeoning, piercing, and slashing from nonmagical attacks

**Senses** darkvision 120 ft., passive Perception 17

**Languages** Common, Undercommon, Infernal, Draconic

**Challenge** 15 (13,000 XP)

| **STR** | **DEX** | **CON** | **INT** | **WIS** | **CHA** |
| 18 (+4) | 18 (+4) | 18 (+4) | 17 (+3) | 15 (+2) | 18 (+4) |

**Abilities**

***Legendary Resistance (3/Day)*** If Karasu fails a saving throw, he can shoose to succeed instead.

***Regeneration*** Karasu regains 20 hit points at the start of his turn if he has at least 1 hit point and isn't in sunlight or running water.  If Karasu takes radiant damage or damage from holy water, this trait doesn't function at the start of the vampire's next turn.

***Spider Climb*** Karasu can climb difficult surfaces, including upside down on ceilings, without needing to make an ability check.

***Vampire Weaknes*** Karasu has the following flaws:

- *Forbiddance*. Karasu can't enter a residence without an invitation from one of the occupants.
- *Harmed by Running Water*. karasu takes 20 acid damage if he ends his turn in running water.
- *Stake to the Heart*. If a piercing weapon made of wood is driven into Karasu's heart while he is incapacitated in his resting place, he is paralyzed until the stake is removed.
- *Sunlight Hypersensitivity*. Karasu takes 20 radiant damage when he starts his turn in sunlight.  While in sunglight he has disadvantage on attack rolls and ability checks.

**Actions**

***Multiattack***.  Karasu makes two attacks, only one of which can be a bite attack.

***Unarmed Strike***. Melee Weapon Attack:  +9 to hit, reach 5 ft., Hit: 8 bludeoning damage.  Instead of dealing damage, Karasu can grapple the target (escape DC 18).

***Bite***. Melee Weapon Attack:  +9 to hit, reach 5ft., one willing creature, or a creater that is grappled by Karasu, incapacitate, or restrained.  Hit: 7 piercing damange plus 10 necrotic damage.  The target's hit point maximum is reduced by an amount equal to the necrotic damange taken, and Karasu regains hit points equal to that amount.  The reduction lasts until the target finishes a long rest.  The target dies if this effect reduces its hit point maximum to 0.  A humanoid slain in this way and then buried in the ground rises the following night as a vampire spawn under the vampire's control.

**Charm**.  Karasu targets one humanoid it can see within 30 feet of it. If the target can see the vampire, the target must succeed on a DC 17 Wisdom saving throw against this magic or be charmed by the vampire. The charmed target regards the vampire as a trusted friend to be heeded and protected. Although the target isn’t under the vampire’s control, it takes the vampire’s requests or actions in the most favorable way it can, and it is a willing target for the vampire’s bite attack. Each time the vampire or the vampire’s companions do anything harmful to the target, it can repeat the saving throw, ending the effect on itself on a success. Otherwise, the effect lasts 24 hours or until the vampire is destroyed, is on a different plane of existence than the target, or takes a bonus action to end the effect.

***Children of the Night (1 / Day)***. Karasu magically calls 3d6 swarms of bats or ravens.  The called creatures arrive in 1d4 rounds, acting as allies of Karasu and obeying his spoken commands.  The creatures remain for 1 hour, until Karasu dies, or until Karasu dismisses them as a bonus action. 

*** ***

**Legendary Actions**

Karasu can take 3 legendary actions, choosing from the options below.  Only one legendary action can be used at a time and only at the end of another creatures' turn.  Karasu regains spent legendary actions at the start of his turn.

***Move*** Karasu moves up to his speed wihtout provoking opportunity attacks.

***Unarmed Strike***  Karasu makes one unarmed strike.

***Bite (costs 2 actions)*** Karasu makes one bite attack.

**Spellcasting**

Karasu is a practitioner of the arcane arts.  He is a 9th-level spellcaster.  His spellcasting ability is Intelligence (spell save DC 15, +7 to hit with spell attachs).  He has the following spells prepared):

- *Cantrips (at will)*. mage hand, chill touch
- *1st level (4 slots)*. inflict wounds
- *2nd level (3 slots)*. detect thoughts, cloud of daggers
- *3rd level (3 slots)*. fly, nondetection
- *4th level (3 slots)*. greater invisibility
- *5th level (1 slot)*. dominate person

---

#### Personality and History

Karasu is known to be cunning and ruthless.  He has stated stated that he learned the art of magic from Cain the Necromancer.  It is also rumored that Karasu also saught out The Master Sword in the Kokiri forrest and killed many elven warriors along the way.  However, once inside The Forrest Temple, he was magically sealed inside the temple by the (sacrificed) life force of the forrest's protective Deku Tree.  It is unknown if he was able to draw The Master Sword from its place of holding.

Karasu has sired at least one vampire spawn ([Phage Elung]({% post_url 2017-04-23-DND5E-NPC-Phage %})).

Homebrew of the [Yu Yu Hakusho character of the same name](http://yuyuhakusho.wikia.com/wiki/Karasu).

<!--
- gets freed by Lolth after she learns of Ellion's worshiping another diety
- Karasu seeking revcenget against Ellion for not getting him out because he was afraid to be usurped as Cain's apprentice
- Lolt also grants Karasu an Atlantian Faerie ring to keep his allegiance
-->

---

#### Adventures

<ul class="posts">
{% assign count = 0 %}
{% for post in site.posts %}
  {% if post.tags contains 'karasu' %}
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

**Other Resources:**

- [WotC Vampire Lord Template](http://archive.wizards.com/default.asp?x=dnd/mm/20021018a)
- [Vampire base stats](https://chisaipete.github.io/bestiary/creatures/vampire)
- Vampire Spellcaster, PHB 398