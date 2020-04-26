---
title: "C Compilation and Execution Error"
author: Austin
date: 2016-04-05
categories: [Linux, Misc]
tags: [arch, linux, c, ruby, gems, jekyll, troubleshooting, aur]
toc: false
---

Recently after restoring my system I've been getting some 
funky erorrs when compiling / installing AUR packages and Ruby Gems.  At first I thought 
the issue was specific to the repspective programs.  (e.g. 
the ones being compiled by ABS and the gem in question).

However, upon closer inspection, both errors were related 
to the execution of c programmed executables.  Some quick 
Googleing lead me to [this Arch Linux forum 
thread](https://bbs.archlinux.org/viewtopic.php?id=107372).

I don't remember ever manually doing anything to 
```glibc``` as suggested in the thread, but at any rate, a 
simple upgrade did the trick for me.

```# pacman -S glibc gcc```
