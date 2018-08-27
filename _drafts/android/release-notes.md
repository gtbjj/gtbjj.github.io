---
layout: post
title: "Release Notes: 2018-09-XX"
excerpt: ""
category:
- Android
Tags:
- android
- kernel
- root
- nexus 6p
- n6p
- release notes
comments: true
---

- wireguard support
https://forum.xda-developers.com/android/development/wireguard-rom-integration-t3711635

- corrected vibration strength in performance profile

- added state notifer from electron kernel
https://github.com/frap129/angler/commit/ebad28095168e69a93bb3c2c5520e55cb9e080d2

- added hima hotplug from sphinx kernel
https://github.com/milouk/Sphinx-Kernel-Bullhead/commit/d6d249b8b3f73f836ad8d341e41354702ded4747
  - need configured manully through adb in /sys/kernel/hima_hotplug
  - hima is enabled by default at its default values
  - msm option available, disabled by default

- unified thermal mod
https://forum.xda-developers.com/nexus-6p/development/mod-cttmod-xthermal-fast-charge-unified-t3673481

enable QC2.0 by reverting qpnp-smbcharger.c
https://android.googlesource.com/kernel/msm/+/bed1c9c5425eff72bd600ca6da7fc1a7fa9036ce

- not sure if last 2 make a difference, but they're there (still getting 700 - 800 mA from USB -- TESTERS WANTED, I don't have the factory charging cable anymore)


UTM not included, but referenced as optional

added sioplus io scheduler
https://github.com/AudioGod/Gods-Kernel-Huawei-Angler/commit/50aefdd3f78804a5c0e1e552a70bea00fc963118
added maple io scheduler

added wake gestures (swipe to sleep / wake and double tap to wake) support
https://github.com/flar2/angler/commit/789da6af8c5189521501babf9d7d35a9ffadb8f4

Electron Kernel:
- swappiness = 8
- laptop mode = 1 (on)
- disable some wlan wakelocks
- brightness in profiles (gameing / perf = 255 100%, battery = 100 40%, bal = 180 70%)

BATTERY SOLICITATION
  
  Guide to cherry picking from Git: https://forum.xda-developers.com/showpost.php?p=52925649&postcount=3


TO DO:
- @shaikhalid007 - Pie is laggy
- @eurochild - only dt2w is working
  - cherry-pick from electron kernel: https://github.com/frap129/angler/commit/a0d44b627cd69ed61bb62282086a526c9e924002
  - @phantom146 - don't have both active at once
- enable HMP tuneables
  - https://forum.xda-developers.com/private.php?do=showpm&pmid=20849407
  - https://www.xda-developers.com/google-pixel-fastest-android-phone-eas/#
  
  


default wake vib = 20
/sys/android_touch/*

directions:  https://forum.xda-developers.com/nexus-6/development/kernel-fk-wake-gestures-t3060196

---

#### AOSP

Manifest Changes:
- AOSiP Apps:
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


Add Apps



