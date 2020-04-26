---
title: "Nexus 6P: Rooting, Part I"
author: Austin
date: 2016-06-26 18:46:00
categories: [Android, Tutorial]
tags: [android, google, nexus 6p, root, adb]
---

I just paid my 5 month Project Fi bill with, and thus I've decided I'm long overdue to root my Hauwei Nexus 6P!

Honestly though, the Nexus 6P is such a great device I really didn't feel an urgent need to get rooting away with with it.  I had come to it 
from a modest HTC One Remix.  So, I was thrilled just to have sufficient storage space, a BA camera, and hardware that wouldn't crap out when I 
tried to pictures and documents from between my phone and laptop.

Anyway, I've been out of the XDA realm for quite a while now -- think back to Samsung Galaxy S3 era.  I was still a graduate student then and 
had... uh... pleny of free time to break, fix, and do whatever to my phone.  I also went down the Linux rabbit hole in the mean time and that 
became the forefont of my IT hobbying.

Rather than cram a ton into one post, I'm going to spread this process out over severl so stay tuned.

-----

Without further adue (**proceed at your own risk**), first be sure to have Android Debugging Bridge (ADB) setup and working properly.  Take a few minutes to visit the [ADB page on the Arch Wiki](https://wiki.archlinux.org/index.php/android#Android_Debug_Bridge_.28ADB.29).

1) Go into phone's *Settings* > *About Phone* > and tap *Build Number* until you see at toast message about *being a developer*.  Then, go back 
to *Settings* and then to *Developer Options*.  Tick *Enable OEM Unlock* and *USB Debugging* and proceed below.

2) Connect your phone via USB and check that ADB has found it:

```$ adb devices```

The terminal output should list your phone's serial number and a status report (should say *device*, but may read *unknonwn,unauthorized,etc..*)

3) Boot to the phone's bootloader (this can also be done by powering off, then holding the *power* and *volume down* buttons):

```$ adb reboot bootloader```

4) Check that fastboot is working (output should be similar to *$ adb devices*):

```$ fastboot devices```

5) Unlock the bootloader:

**WARNING:  This will erase all user data on your phone!** 
Consider a tool like [Syncthing]({% post_url 2016-02-20-syncthing %}).  Fortunately, these days (if you've configured your Google account 
accordingly) all your apps, data, WiFi passowrds, and the like get backed up to Google's servers. So you're spared some overhead there.

```$ fastboot flashing unlock```

You'll get a message on the phone asking you to confirm.  Scroll with the volume buttons and select with the power button.

6) Reboot the phone:

```$ fastboot reboot```

You will get an error message about Google not being able to check if the phone is compormoised.  Apparently this is *normal* and will persist 
on reboots as long as the phone's bootloader is unlocked.

Before continuing to [Part 2]({% post_url 2016-06-27-nexus6p-recovery %}) you'll want to disable any security features.  This will allow you to make a backup that can be fallen back on should you break something in the future.  If you do not disable security pins / patterns / fingerprints, then you wont be able to access the backup of the current system once you restore it.  However, there are some possible workarounds in case you forget (see reference at bottom of page).

### Bumps Along the Way:

ADB lists devices as *unauthorized*:

> Check that USB Debugging is enabled.  Unplug and replug the device into your computer.  There should be a pop-up on the phone asking you to accept that computer as a debugger.  Check the "always allow for this computer" box and then *accept*.

ADB finds device but fastboot does not:

> You need to use ADB to boot to the phone's bootloader prior to checking fastboot.

-----

### References:

[XDA Developers Guide](http://forum.xda-developers.com/nexus-6p/general/guides-how-to-guides-beginners-t3206928)
