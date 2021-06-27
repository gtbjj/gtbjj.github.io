---
title: "Nexus 6P: Rooting and Recovery, Part 2"
author: Austin
date: 2016-06-27
categories: [Android, Tutorial]
tags: [android, google, nexus 6p, flash, adb, fastboot, twrp]
---

*Please complete the instructions an [Part I]({% post_url 2016-06-26-nexus6p-rooting %}) before continuing below.*

**Proceed at your own risk.**

1) Download the [latest version of TWRP](https://dl.twrp.me/angler/) to your computer.

2) Boot to your phone's boot loader either with the physical buttons or ADB.

3) Check that fastboot is working (```$ fastboot devices```), and flash the recovery image:

```$ fastboot flash recover /path/to/twrp-<version>.angler.img```

4) On your phone:  use the volume buttons to scroll to *Reboot Bootloader*, then scroll to and select *Recovery Mode*.

> Just a special mention here that WOW, these things have come a long ways in the last few years!  A clock, temperature, and battery status all in the recovery mode, not to mention touch support! I'm sure they've been around for a while, but I'm a bit out of the game.  At any rate, nice work TWRP Team!

5) Swipte to allow modifications.

6) Remember, you should have already disable the security features of your phone so that you can be able to access backups in the future.  That 
said, tap *Backup* on TWRP's home screen.  The first backup you make should contain that *system, data, boot, vendor* checkboxes.  Swipe to 
continue -- it will take a few minutes to complets, so maybe start browsing which ROM you'll flash first.

7) Make a separate backup of the *EFS* section.  This contains your phone's MEI which basically authenticates your number, carrier, phone 
status, and the lowest level essentials.  Screwing this up may be impossible to recover from.  **So back it up now.**

Next, continue to [Part 3]({% post_url 2016-06-27-nexus6p-superuser %}) for gaining root / superuser access.

-----

### References:

[XDA Tutorial](http://forum.xda-developers.com/nexus-6p/general/guides-how-to-guides-beginners-t3206928)
