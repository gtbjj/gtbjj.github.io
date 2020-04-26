---
title: X205TA: Random Freezing
author: Austin
date: 2016-06-19
categories: [Linux, X205TA]
tags: [arch, linux, troubleshooting, x205ta, freezing, grub, kernel line, power state, cstate]
---

Simply put, as [on the Arch Wiki](https://wiki.archlinux.org/index.php/Asus_x205ta#Freezing), add the following parameter to the kernel line of your boot loader's config file.

In my case that's */boot/loader/entries/arch.conf*

```
options	root=/dev/mmcblk0p2 rw quiet intel_idle.max_cstate=1
```
