---
title: Chromium Relocation Error
author: Austin
date: 2016-05-21 14:45:00
categories: [Linux, Chromium]
tags: [linux, chromium, relocation, troubleshooting, libpci.so.3, pciutils]
---

After a recent ubgrade I got the following erorr when 
trying to launch Chromium:

```
/usr/lib/chormium/chromium: relocation error: 
/usr/lib/chromium/chromium: symbol ci_int, version 
LIBPCI_3.0 not defined in file libpci.so.3 with link time 
refernece
```

Googling the error lead me to [a Reddit thread with a 
workaround](https://www.reddit.com/r/archlinux/comments/4kberj/chromium_wont_start_libpciso3_relocation_error/).

Downgrading *pciutils (v3.5.0-1)* worked for me 
(chromium-50.0.2661.94-1).

Check your current versions:

```
$ pacman -Qi pciutils
---
Name	: pciutils
Version	: 3.5.0-1
...
.....
.......
```

Check available package cache:

```
$ ls /var/cache/pacman/pkg | grep pciutils
-----
pciutils-3.4.1-1-i686.pkg.tar.xz
pciutils-3.5.0-1-i686.pkg.tar.xz
```

Downgrade package:

```
# pacman -U 
/var/cache/pacman/pkg/pciutils-3.4.1-1-i686.pkg.tar.xz
```
