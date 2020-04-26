---
title: Nexus 6P: Rooting, Part IV
author: Austin
date: 2016-06-27 14:02:00
categories: [Android, Tutorial]
tags: [android, google, nexus, nexus 6p, flash, rom, root]
toc: false
---

Previously I've covered:

* [Part 1]({% post_url 2016-06-26-nexus6p-rooting %})
* [Part 2]({% post_url 2016-06-27-nexus6p-recovery %})
* [Part 3]({% post_url 2016-06-27-nexus6p-superuser %})

After reading those, **proceed below at your own risk.**

1) Head over to XDA Forums and scower through the treads on either [N6P Original Android Development](http://forum.xda-developers.com/nexus-6p) or 
[Android Development](http://forum.xda-developers.com/nexus-6p/development) until 
you find a ROM that suits your interests.

2) Each thread should have a download section where you can download the 
ROM.zip and a compatible version of GAPPS.zip.  You will want these on 
your phone.  I prefer [opengapps](https://opengapps.org) (that's ARM64 / 6.0 for the Nexus 6P) Pico Version which only installs the Play Store 
and allows me to add other things as desired.

3) Next, reboot into recovery mode.  Before flashing the ROM and Gapps you've downloaded, you'll need to *backup* and *wipe* your system 
(whilst leaving the internal storage intact).

```
To backup:
Before doing this, remember to have disabled you're lockscreen pin otherwise you will not be able to access your OS in the event that you have 
to restore from the backup. (If you forget, there are workarounds posted on XDA Forums)

Navigate through TWRP's menu to the backup section.  The important things here are Boot, System, Vendor, and Data.
```

```
To wipe:
Go back to the TWPR home screen > Wipe > Advnaced > Check System, Data, Cache, Dalvik / ART.
```

4) Now you're ready to install the .ZIPs.  Tap *Install* on the TWRP home 
screen, navigate to the .ZIPs you've downloaded, and swipte to install 
them.  You'll be given an option to wipe the dalvik / cache before 
rebooting, which is generally good practice (it wipes the ROMs app cache 
and gets repopulated at boot).

That's it!  Since this was a short post, here are some goodies to look 
into:

* A [Guide to Android I/O schedulers](https://androidmodguide.blogspot.com/p/io-schedulers.html) and recommendations for use.
* A [Guuide to Android CPU Governors](https://androidmodguide.blogspot.com/p/blog-page.html) and recommendations for use.
* Some apps I'm digging for rooting adventures:  [No Frills CPU Control](https://play.google.com/store/apps/details?id=it.sineo.android.noFrillsCPU), [Voltage Control](https://play.google.com/store/apps/details?id=com.darekxan.voltagecontrol), and [Helium](https://play.google.com/store/search?q=helium). 

I'm also planning to post reviews of ROMs I try.  Tentatively, you can view my [master raw data spreadsheet](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit?usp=sharing) on Google Drive.  We should all know by now that synthetic benchmarks should be taken with a grain of salt, so I won't harp on that or the hundreds of possible Governor / IO combinations for each each ROM.  Not to mention the sheer time to test real-world battery usage and such.  Perhaps, though, after I find a few favorites, I'll do some more in depth analyzing.

---

### Reference:

[XDA Tutorial Post](http://forum.xda-developers.com/showpost.php?p=62924118&postcount=2)

