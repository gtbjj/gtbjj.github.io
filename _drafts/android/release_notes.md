---
layout: post
title: "Release Notes YYYYMM"
excerpt: "Nexus 6P Angler Kernel release notes"
category:
- Android
tags:
- android
- nexus 6p
- kernel
- root
comments: true
---


NOTE:  add this section to XDA thread
Kernel Philosophy:
- Open Source.  Period.
- Follow [Linux Stable kernel rules](https://github.com/torvalds/linux/blob/master/Documentation/process/stable-kernel-rules.rst) - Admittedly I used to be a fan of "kitchen sink" kernels, now I much prefer minimalism.  I'm fine with features if they fix something or make a functional addition.  You'll likely find many things that were used for testing in the source code, but don't expect them all to be included in the official releases.  You're still encouraged to fork / clone, explore / experiment, and make a pull request / teach me something.
- Security > Stability > Longevity > Performance - I've discussed this in previous posts.  I view *gaming* and *performance* profiles as situational tools and not *daily drivers.*  Point in case, I'd wager that throughout the course of a day your phone is in Deep Sleep far more than the screen is on.  Alternatively, there is no use in bragging about battery life if the UI is so clunky all you can do is stare at the homescreen.

*see [Nathan Chancellor's Flash Kernel Philosophy](https://forum.xda-developers.com/nexus-6p/development/kernel-ninja-kernel-v1-0-t3437247)

thanks to audio god / god's kernel, frap129 / electron kernel

Previous Features:  XDA thread superseeds website





CONFIG:

- vFAT, NTFS support already included
- localversion / kernel name corrected
- enable fingerprint boost
- enable msm hotplug

SOURCE:

- Added MSM Hotplug Driver ([God's Kernel commit](https://github.com/AudioGod/Gods-Kernel-Huawei-Angler/commit/aefa3e6ccab029844385e252df4e9857078b589b))
- Added hotplug enable toggle ([God's Kenrel commit](https://github.com/AudioGod/Gods-Kernel-Huawei-Angler/commit/12690300e6267cfc6d02e4b6d6c74bae7717b87d))
- compiled with [Linaro 4.9](https://android-git.linaro.org/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9-linaro.git/)
- [fingerprint boost from electron kernel](https://github.com/frap129/angler/search?q=input+boost&type=Commits)


ANYKERNEL / SPECTRUM:

per-profile settings, no longer universal in init:

- battery v1.4
  - vibration strength: 20%
  - LMK - franco kernel default
- balance v1.3
  - 1024 kb read ahead cache (more clear performance break than 512)
  - vibration strength: 20%
  - LMK - franco kernel default
- performance v2.3
  - vibration strength: 33%
  - LMK - aggressive preset from Kernel Auditor
- gaming v1.1
  - vibration strength: 50%
  - LMK - very light presets from Kernel Auditor for visible and foreground applications, aggressive preset from Kernel Auditor for everything else


IN PROGRESS:

Chill CPU govenror - https://github.com/frap129/angler/search?q=chill+governor&type=Code

Relaxed CPU governor - https://github.com/frap129/angler/commit/d9f9076df75e297349c0b1b01a4e1af740eac35d

Flash CPU governor - https://github.com/nathanchance/angler/search?q=flash+governor&type=Commits

savagezen governor

config: remove cfq, deadline, zen, and deadline (still in source, may be enabled during compile)
config: remove userspace, and ondemand (still in source, may be enable during compile)
