---
layout: post
title: Package Library Not Found
excerpt: "Fix for - error: could not open file /var/lib/pacman/local/<package>/desc"
category:
- Linux
tags:
- arch
- linux
- troubleshooting
- pacman
- no such file
comments: true
---

I had a seemingly benign, yet annoying error that I got around to fixing the other day.  The short version is that every time I opened a 
terminal I got the following error:

```error:  could not open file /var/lib/pacman/local/bcc-1.06.95-2/dsce: No such file or directory```

Trying to upgrade, or downgrade, the package results in the same error.

Easy enough to fix, simply:

1) Boot from an live USB

2) Mount and ```chroot``` into your root filesystem

3) Backup necessary setting if needed (e.g. ```# mv /etc/cups > /etc/cups.bk```)

4) Uninstall the problem package (```# pacman -Rns <package>```)

5) Reinstall the package (```# pacman -S <package>```)

6) Restore prior settings (e.g. ```# rm -r /etc/cups && mv /etc/cups.bk /etc/cups```)

That did the trick for me.  Feel free to comment if you find other solution, or similar erorrs.
