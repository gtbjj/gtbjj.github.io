---
layout: post
title: "Release Notes 2018-12-XX
excerpt: "Savagezen's Angler Kernel Release Notes, Dec. 2018"
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

To Do:
- Pie
  - backport BBS and EIS
  - File Based Encryption


#### Kernel / Source Changes:

**Oreo 8.1.0**

- CopperheadOS / [Clang](https://github.com/CopperheadOS/platform_prebuilts_clang_host_linux-x86) - compiled with Linaro and Copperhead's hardened clang.  Once upon a time I used CopperheadOS as a base kernel before development slowed.  At any rate, Pixel devices are compiled with Clang, so I went ahead and used Copphead's version for this kernel as well.  See [Copperhead's official documentation](https://copperhead.co/android/docs/technical_overview#compiler-hardening)
- CopperheadOS - hardened ```.config``` changes.  See [this commit](https://github.com/CopperheadOS/kernel_huawei_angler/commit/ed07138b5295e1caad9b2f3240aadfe08132327e)
- CopperheadOS / SLUB sanitization, [cherry-picked commit](https://github.com/CopperheadOS/kernel_huawei_angler/commit/d7d6ff18583bd8c74017a283adfb8994a3cc4432)
- CopperheadOS / add FORTIFY_SOURCE measures, [CopperheadOS kernel hardening](https://copperhead.co/android/docs/technical_overview#kernel-hardening)
- CopperheadOS / gather extra entropy at boot - [cherry-picked commit](0ccf3172e7409062340d14d9821caf7709501046))
- CopperheadOS / port grsecurity's device side channel, [cherry-pick commit](https://github.com/CopperheadOS/kernel_huawei_angler/commit/1714e7fc9a2abe2e9a76fc1dd28abd1b2a4246da)
- [December 2018 Security Patch](https://android.googlesource.com/kernel/msm/+/android-8.1.0_r0.121)
- testing build 20181211-01

**Pie 9.0**

- Testing builds removed to rebase from latest Oreo build
- Will focus on pie once oreo security releases stop
- the sources are still open if someone can tell me what to patch in order to be compatible with Pie


- Consult with other developers, SHOULD be compatible with Pie out of the box.  Let me know if there are issues!

  - 20181211-{02,03,04}:  testing permissive selinux (anykernel)
  
  Thanks AdrianDC - SELinux permissive patch - https://github.com/AdrianDC/kernel_permissive_patcher/blob/master/kernel_permissive_patcher/kernel_permissive.sh

- keep selinux = permissive
- turn off safety net
- turn off verity


---

#### Kernel / AnyKernel Changes:

---