---
title: Nexus 6P: Rooting and Superuser, Part III
author: Austin
date: 2016-06-27
categories: [Android]
tags: [android, google, nexus 6p, flash, adb, root, superuser]
---

Firstly, read [Part 1]({% post_url 2016-06-26-nexus6p-rooting %}) (unlocking bootloader) and [Part 2]({% post_url 2016-06-27-nexus6p-recovery %}) (flashing custom recovery) before **proceeding at your own risk**.

1) Download [SuperSU Stable](http://forum.xda-developers.com/showthread.php?t=1538053) or [SuperSU Beta](http://forum.xda-developers.com/apps/supersu/2014-09-02-supersu-v2-05-t2868133) (*I chose beta*)

2) If you downloaded it on your computer, rembmer you can send the file via USB / ADB, like so:

```$ adb /path/to/file.zip push /sdcard/Download/file.zip```

3) Boot into recovery:

```$ adb reboot recovery```

4) In TWRP, tap *Install* and navigate to the SuperSU you downloaded and swpie to flash.

5) When prompted, *Wipe Dalvik / Cache*

I chose to make another backup here and, once booted to a live system, send the backups to Google Drive.  That way they're easy enough to 
access, but not hogging up space on the phone itself.  I also chose to make a backup here so that I have one of *completely stock system* and a 
*stock + root* system.

6) Finally, *reboot* the system.

Now, continue to [Part 4]() which will quicly cover flashing ROMs (which is very similar to the steps already covered).

---

### References:

[XDA Tutorial](http://forum.xda-developers.com/nexus-6p/general/guides-how-to-guides-beginners-t3206928)

