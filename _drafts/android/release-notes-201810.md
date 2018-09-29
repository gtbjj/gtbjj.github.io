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
comments: true
---

#### Kernel

To Do:
- october security patch
- sweep to wake / sleep
- FSYNC not disabling


gestures:
- electron: no conflicts or errors in build
- perissions / settings not being set in init
- set in spectrum.rc due to permissions?



fsync:
- echo N > /sys/module/sync/parameters/fsync_enabled
- set in spectrum.rc due to permissions?


init.sz.rc not being applied
 - core control gets enabled
 - no msm-thermal
 - no fingerprint boost
 - no spectrum profiles (? partial)
 - no laptop mode
 - fsync not isabled
 - no backlight dimmer

testing:
- oreo-testing-201809-01.zip
  - reset to august release
  - wireguard support
  - maple and sioplus io schedulers
- oreo-testing-201809-02.zip
  - wake gestures
- oreo-testing-201809-03.zip
  - september security patch
  - NEED:  edit init.sz.rc / anykernel.sh to apply, try clean wipe / install

- hima hotplug








---

#### AOSP

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


Add Apps