---
layout: post
title: "Release Notes 2019-xx-xx
excerpt: "Savagezen's Angler Kernel Release Notes, XXX. 2019"
category:
- Android
tags:
- android
- n6p
- nexus 6p
- pie
- root
- kernel
- release notes
- security patch
- nexus
comments: true
---

To Do:
- New Features:
  - security level / branch
  - Electronic Image Stabilization (EIS) - https://forum.xda-developers.com/mi-a1/how-to/guide-enable-camera2-api-eis-stock-t3883017
- Old Feature / Patch Check:
  - merge linux stable
  - schedulers:  noop, cfq, deadline, fiops, row, zen, maple, sioplus
  - tcp algorithms: bic, cubic, htcp, hybla, vegas, veno, westwood, reno
  - KCAL tweaks in init script (FK)
  - Reduce wifi wakelocks
  - bluetooth memory leak
  - KCAL color control support
  - KCAL brought to linux guidelines
  - filesystem support: f2fs, vfat, ext4, ntfs
  - msm hotplug driver
  - fingerprint boost (electron kernel)
  - wireguard support
  - power efficient work queues (electron kernel)
  - state notifier (electron kernel?)
  - tickeles system / idle (electron kernel)
  - gentle fair sleepers (electron kernel)
  - hima hotplug driver
  - wake guestures
  - copper head security patches
  - copy savagezen_defconfig
  - Due for Removal:  FK Updater


#### Kernel / Source Changes:

2 Pie Testing Versions:  AOSiP / StatixOS; both have File-Based Encryption (FBE), require custom TWRP ([download](https://androidfilehost.com/?fid=11410963190603914945))

FBE is supported by both kernel / rom bases; need [patched TWRP](https://androidfilehost.com/?fid=11410963190603914945))

**Boot Check:**

| ROM      | Kernel Base | Magisk | Open Gapps         | Boots / Time | Notes |
| -------- | ----------- | ------ | ------------------ | ------------ | ----- |
| AOSiP    | AOSiP       | v18    | nano 9.0, 20190203 | yes, 3.6 min |
| AOSiP    | StatixOS    | v18    | nano 9.0, 20190203 | yes, 3.5 min |
| StatixOS | AOSiP       | v18    | nano 9.0, 20190203 | yes, 3.4 min | SysUI crash |
| StatixOS | StatixOS    | v18    | nano 9.0, 20190203 | yes, 3.5 min |

- test build with AOSP Beta (by Winxuser, [XDA](https://forum.xda-developers.com/nexus-6p/development/rom-aosp-t3843647), [source](https://gitlab.com/winxuser/android_kernel_huawei_angler/commits/android-9))
  - successful build w/ from kernel source w/ hardened clang and linaro, angler_defconfig
  - zipped w/ savagezen anykernel, testing branch pie-testing-aosp
  


---

#### Kernel / AnyKernel Changes:

---