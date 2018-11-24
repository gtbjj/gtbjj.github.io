---
layout: post
title: "Release Notes 2018-10-XX"
excerpt: "Savagezen's Angler Kernel Release Notes, Oct. 2018"
category:
- Android
tags:
- android
- n6p
- nexus 6p
- root
- kernel
- release notes
- developer notes
- security patch
- nexus
comments: true
---

#### To Do:
- wake gestures
- november security patch - looks like kernel was not effected by security update [details](https://source.android.com/security/bulletin/2018-11-01.html)
- update features on XDA
- update download links on XDA

---

#### Kernel Source Changes:
- reset to August 2018 to troubleshoot
- readded maple i/o sched
- readded sioplus i/o sched
- readded state notifier from electron kernel (required for HIMA)
- readded hima hotplug driver (may need to patch after security update)
- readded wireguard support
- readded wake gestures
- retro removed:
  - Qualcom / Quick Charge changes (change in OP and features)
  - clean cache driver (change in OP and features)
- september security patch
- october security patch
- hima enabled by default, can be disabled in /sys/kernel/hima_hotplug

---

#### Kernel / Anykernel Changes:

- reset to August 2018 for testing
- recorrected vibration strength in performance profile
- per profile brightness settings
- reset to FKr76 to test ramdisk changes

testing v07 - fk
testing v08 - rename init.fk.rc to init.sz.rc
testing v09 - test spectrum support (no profiles, fk profiles working)
testing v10 - test spectrum profiles working (root access issue wiht spectrum app)
            - thermal off and core control on by default
            - disable big cores during boot time
                - XDA: https://forum.xda-developers.com/nexus-6p/general/guide-fix-nexus-6p-bootloop-death-blod-t3640279
                - Source:  https://github.com/xcnathan32/4-core-Android-O/commit/d8bb98991d206f3547b4c23618f272a1eddd0b4b
testing v11 - testing misc settings
            - enable fingerprint boost
            - enable backlight dimmer
            - 20% volume gain
            - double check msm_thermal disabled
            - double check core control enabled
            - wlan wakelocks from electron kernel
testing v12 - chown system and permissions for:
            - fp_boost
            - backlight dimmer
            - volume gain
testing v13
            - wlan wakelocks from electron kernel (full)
            - disable fsync
            - double tap 2 wake
testing v14
            - fudged use of electron kenrel anykernel
testing v15 - using SZ zImage-dtb with Electron Kernel anykernel (differnet methods in anykernel.sh to pack/repack ramdisk changes)
testing v16
            - as of v15: fsync, screen dimmer, fp_boost working on boot, wake gestures working but not on boot
            - naming convention re-established
            - reapplied init BLOD prevention
            - reapplied init FKU profiles
            - reapplied launch latency value
            - reapplied ksm changes
            - volume gain (check on boot)
            - msm_themreal disabled (check on boot)
            - core control disabled (check on boot, handled in profiles)
            
to investigate:
 - zswap
 - shadow scheduling
 - pdesire audio

---

#### Installation Notes:

While ironing out several kinks over the last couple months, I've found the best practice for installing kernels to be:

- TWRP
- Wipe > Advanced Wipe > Dalvik / ART Cache and Cache
- Install > flash kernel
- Wipe > Advanced Wipe > Dalvik / ART Cache and Cache
- Reboot System

---

#### Extra Goodies:

IFTTT Notifications:
AnyKernel / Zips - https://ifttt.com/applets/89220209d-if-new-zip-for-savagezen-s-angler-kernel-then-send-a-notification-from-the-ifttt-app
Kernel Source - https://ifttt.com/applets/89220393d-if-new-release-from-savagezen-s-angler-kernel-source-then-send-a-notification-from-the-ifttt-app

#### Developer Notes:

Developer Note for Patching in Security Updates:
- cherry-pick merge commits (need -m option)
  - see [Stack Overflow Question](https://stackoverflow.com/questions/9229301/git-cherry-pick-says-38c74d-is-a-merge-but-no-m-option-was-given)
- usually parent 1 in msm-upstream
- may need to modify some files to exclude commit message(s)
- unpack boot.img for 
  - boot.img - future updates https://unix.stackexchange.com/questions/64628/how-to-extract-boot-img
  - zImage - 

---

```
#### AOSP Notes

Manifest Changes:
- AOSiP Apps:
  - MusicFX
  - Settings
  - OwlsNest (edit in build/target/product/core.mk
)
  - MusicFX
  - Launcher3
- Kerenel (device/huawei/angler-kernel); see script to pull
- init files (device/huawei/angler/init.angler.rc); see script to pull
  - import init.sz.rc
  - import init.spectrum.rc
  - import init.spectrum.sh
```