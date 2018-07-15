---
layout: post
title: ""
excerpt: ""
category:
- Android
tags:
- android
- root
- kernel
- nexus 6p
- troubleshooting
- camera
- fingerprint
comments: true
---

#### New Features / Fixes:

- fingerprint sensor not being recognized by system (fully fixed)
- double tap power button to jump to camera (fully fixed)
- rebased and forked from [Franco Kernel](https://github.com/franciscofranco/angler)
- franco features (not previously included):
- - disables verfied boot flag for Android Pay (root still breaks)
- - support for [FKUpdater App](https://play.google.com/store/apps/details?id=com.franco.kernel)
- - support for FKUpdater performance profiles

#### Continued Features:

- Open Source. [Kernel](https://github.com/savagezen/kernel_huawei_angler), [AnyKernel2](https://github.com/savagezen/anykernel)
- I/O Schedulers:  noop, cfq, deadline, fiops, zen (default), row
- Reduced wifi wakelocks and wakelock period ([Flash Kernel](https://github.com/nathanchance/angler))
- Remove possible bluetooth memory leak (Flash Kenrel)
- TCP algorithms: Bic, Cubic, Htcp, Hybla, Vegas, veno, Westwood (default), Reno) (Cubic is default in Franco Kernel)
- KCAL color control support (Franco Kernel)
- KCAL brought to Linux guidelines (Flash Kernel)
- KCAL tweaks (Franco Kernel)
- Removed secure boot and dm-verity checks
- [Spectrum Kernel Manager](https://github.com/frap129/spectrum) support
- Customized spectrum profiles, plus dozens from around the web
- Touchboost disabled (spectrum profile)

#### News - Fixes:

**Jump to Camera:** I noticed a while back that, even on the stock ROM, double clicking the power button was not jumping to the camera -- which is one of my favorite features.  I first suspected that it was error / mismatching vendor.img, but it turns out that there is a hidden setting that is apparently off by default.  *Fix:*  Go to ```settings``` and search for ```jump to camera``` and enable.  Boomsy!

**Faux Audio Support:** Feature has been removed as that patch I used to implement it was breaking builds after I switched to Franco Kernel as a base.

**Fingerprint Scanner:**  The "patch" I was using before to implement this improvement (increasing wakelock after interrupt) was based in a commit message (from Flash Kernel I believe), however, restoring the changed lines in ```drivers/input/fingerprint/fpc1020_tee.c```.

**CopperheadOS:**  The seem to be rebranding / initializing new mirrors, I don't know why.  I do know tht on 7/3/18 a new [CopperheadOS repo for their Angler Kernel](https://github.com/CopperheadOS/kernel_huawei_angler) got an initial commit -- no substantial code though.  The [original repo](https://github.com/AndroidHardeningArchive/kernel_huawei_angler) that got it's organizatoin renamed from CoppperheadOS to *AndroidHardening* and then to *AndroidHardeningArchive* remains 9 months out of date.

#### News - Issues:

**Linux Stable merge breaks build:**

**(not kernel specific) Random Shutdowns:**
- Thresholds (opinion):
| 5% | acceptable for 3 year old device |
| 10% | less acceptable, but not bad |
| 20% | annoying and inconvenient |
| 30% | major inconvenience, acceptable only if failure at higher level |
| 40% + | unacceptable |
- *Did not work*:  [disable Big cores](https://forum.xda-developers.com/nexus-6p/general/guide-fix-nexus-6p-bootloop-death-blod-t3640279)
- *Did not work*:  [Let die in safe mode and fully charge before rebooting](https://www.reddit.com/r/Nexus6P/comments/67y45a/yesterday_my_6p_shut_off_at_25_today_it_shut_off/dgudndw/)
- *Kind of Worked, got to 11% once and reliably to 50% (sigh)*[Let phone die in recovery and fully charge before rebooting](https://www.reddit.com/r/Nexus6P/comments/681v42/early_shutdown_bug_temporary_fix/)
- shutdown-02 profile: trial 1: 35%; trial 2: 28%
 - - link to profile
- shutdown-06 profile: trial 1: 33%; trial 2: 39%
 - - link to profile
- shutdown-07
 - - link to profile


- ['Recalibrate' Battery](https://forum.xda-developers.com/android/general/guide-how-to-callibrate-battery-device-t3308554)
- [Force disablse Doze](https://windroidwiz.wordpress.com/2017/06/02/android-noroot-force-enable-doze-to-extend-battery-life-of-your-phone/)
- [Disable critical battery shutdown](https://forum.xda-developers.com/nexus-6p/general/fix-nexus-6p-randomly-shutting-50-unsafe-t3542309)

#### Performance / Battery Life:
battery v1.4 disables all "Big" cores to prevent random shut downs / boot loops

rc_01 battery v1.3 w/o Big (v2.0); balance v1.2 w/o Big (v2.0)
rc_02 beef up battery v2.1; beef up balance v2.1
compare

benchmarks

zen vs fiops vs noop

battery use

|              | % / h | SOT % | Deep Sleep % / 10 |
|------------- | ----- | ----- | ------------ |
| battery v1.3* | 5.49 | 11 | 6.17 |
| battery v2.0 |
| balance v1.2* | 7.9 | 13 | 5.8 |
| balance v2.0 |

