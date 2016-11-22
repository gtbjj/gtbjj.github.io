---
layout: post
title:
excerpt:
category:
- Linux
tags:
comments: true
---

There are many AUR helper programs that will allow for pacmna-like use of the Arch User Responsitory, but I always feel sense of accomplishment 
when I'm able to figure out / do something myself.

I've often flip flopped on AUR / Git versions of packages because I like the simple "sync and upgrade all" (```-Syu```) option for pacman.  I 
learned to compile and install my AUR packages manually which has helped me make a few [contributions of my own to the AUR]().  I've made 
scripts  in the past to check my currently installed AUR packages against the AUR's RSS feed of recent updates, but only seems beneficial if my 
machine is online 100% of the time (e.g. a desktop rather than a laptop).

It dawned on me to lump together a shell script that will:
* pull down a snapshot of my currently installed AUR packages
* extract the tarball(s)
* fetch the source materials
* compile the package(s)
* install the package(s)
* clean up after

Adding a shell alias, such as ```aur-upd```, give a short command that you can run every month, every week, or every day if you'd like to make 
sure you're staying on top of those Git pushes!  
