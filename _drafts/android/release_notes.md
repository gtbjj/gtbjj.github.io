---
layout: post
title: "Release Notes:  2018-01-28"
excerpt:  "2018-01-28 release note updates for ROM and Kernel builds"
category:
- android
tags:
- android
- kernel
- release notes
- developer notes
- nexus 6p
- angler
- build
- aosp
- rom
- pureaosp
- copperheados
comments: true
---

#### Austin's ROM (pending title)

| [GitHub](https://github.com/savgezen/aosp) | [Download / Android File Host](https://www.androidfilehost.com/?w=files&flid=244516) |

After getting my kernel working post 8.1.x updates, I've been able to get back into ROM building.  
I've continued with an AOSP base, though my kernel is based on CopperheadOS.  The reason for staying 
is just that it makes life easier to rely (somewhat) on Google (Play) Services.  At initial launch 
you will find the following features included:

- [Open Source](https://github.com/savagezen/aosp).  As I move to different devices, more branches
will be added to the repo.
- Built with [my Angler Kenrel](https://github.com/savagezen/kernel_huawei_angler) which is forked from [CopperheadOS](https://github.com/CopperheadOS/kernel_huawei_angler) and is built with [my fork of AnyKernel2](https://github.com/savagezen/anykernel/tree/angler-personal) by osm0sis.
  - fiops I/O scheduler
  - TCP Algorithms:  bic, cubic, highspeed, h-tcp, hybia, illinois, lp, reno, scalable, vegas, veno, yeah, westwood (default)
  - touchboost disabled (in init profile)
  - removed dm-verity checks
  - wakelock control:  wireless driver wakelock and wakelock period
  - wakelock control:  remove unnecessary wakelock gestures
  - bluetooth fix:  possible memory leak and driver bug
  - Faux Sound Control support
  - KCAL color control support
- App Replacements:  I've replaced some of the stock AOSP apps with other open source alternatives.
  - Launcher2 > Lawnchair ([app](https://play.google.com/store/apps/details?id=ch.deletescape.lawnchair.plah) | [source](https://github.com/LawnchairLauncher/Lawnchair))
  - QuickSearchBox > Duck Duck Go ([app](https://play.google.com/store/apps/details?id=com.duckduckgo.mobile.android) | [source](https://github.com/duckduckgo/Android))
  - Calendar > Etar ([app](https://play.google.com/store/apps/details?id=ws.xsoh.etar) | [source](https://github.com/Etar-Group/Etar-Calendar))
  - Email > K9 Material ([app](https://play.google.com/store/apps/details?id=com.fsck.k9.material) | [source](https://github.com/scoute-dich/K9-MailClient))
- Removed Apps:
  - Desk Clock
  - Browswer 2
  - Launcher 3
- Added Apps:  I will keep this list minimal as I do not like *"dogfood"* (or bed *dogfed*) apps any more than the next person.  There is a list of recommended open source apps at the bottom of this page.
  - Orbot ([app](https://play.google.com/store/apps/details?id=org.torproject.android) | [source](https://gitweb.torproject.org/orbot.git/))
- would like to replace music (phonograph) and gallery (leafpic)

**Developer Notes:**

> ROM Name

- Edit ./packages/apps/Settings/res/xml/device_info_settings.xml with:

```
<!-- ROM name -->
<Preference android:key="rom_name"
android:enabled="false"
android:shouldDisableView="false"
android:title="ROM name"
android:summary="Whizz Bang Pop ROM"/>

<!-- ROM build version -->
<Preference android:key="rom_number"
android:enabled="false"
android:shouldDisableView="false"
android:title="ROM build number"
android:summary="7.0.1"/>
```

> Changing Kernel

- device/manufacturer/device_name/device.mk > check LOCAL_KERNEL location (redirect or copy/paste external zImage-dtb to device/manufacturer/device-kernel/Image.gz-dtb)
- device/manufacturer/device_name/init.device.rc > check after 'import init.device.sensorhub.rc' and add import 'init.custom.rc'.  Copy / paste custom init profile from AnyKernel to device/manufacturer/device_name/init.custom.rc.  Do this with any other customized ramdisk files.

> Adding / Removing Apps from Build

- manifest.xml changes repos synced, also need to edit PRODUCT_PACKAGES array in device/manufacturer/device/aosp_device.mk (also remove unwanted packages) and make similar edits in build/make/target/product/core.mk and build/target/product/core.mk

---

#### Angler Kernel

---

#### Pure AOSP

| [Source Code](https://android.googlesource.com/) | [Download / Android File Host](https://www.androidfilehost.com/?w=files&flid=244519) |

---

#### Extras:

**Gapps Downloads:** AFH

**Recommended (Open Source) Apps**

- [Android Terminal Emulator](https://play.google.com/store/apps/details?id=jackpal.androidterm))
- [Amaze File Manger](https://play.google.com/store/apps/details?id=com.amaze.filemanager)
- [Audio Recorder](https://play.google.com/store/apps/details?id=com.github.axet.audiorecorder)
- [Barcode Scanner](https://play.google.com/store/apps/details?id=com.google.zxing.client.android)
- [Better Battery Stats](https://play.google.com/store/apps/details?id=com.asksven.betterbatterystats)
- [Dark Sky Weather](https://play.google.com/store/apps/details?id=net.darksky.darksky))
- [FastHub GitHub Client](https://play.google.com/store/apps/details?id=com.fastaccess.github)
- Leafpic ([app](https://play.google.com/store/apps/details?id=org.horaapps.leafpic) | [source](https://github.com/HoraApps/LeafPic))
- Phonograph ([app](https://play.google.com/store/apps/details?id=com.kabouzeid.gramophone) | [source](https://github.com/kabouzeid/Phonograph))
- [Magisk (Root) Manager](https://play.google.com/store/apps/details?id=com.mathio.serjam)
- [Syncthing](https://play.google.com/store/apps/details?id=com.nutomic.syncthingandroid))
- [Titanium Backup](https://play.google.com/store/apps/details?id=com.keramidas.TitaniumBackup)

**References:**

- [ROM Naming](https://www.androidauthority.com/build-custom-android-rom-720453/))