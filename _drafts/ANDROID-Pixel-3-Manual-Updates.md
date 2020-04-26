---
layout: post
title: Pixel 4: Manual Monthly Update
subtitle:  Installing monthly security patches without wiping user data on rooted Google Pxiel 3"
category: Android
tags:
comments: true
---

#### Sideload OTA Update

 - Download lated [OTA Image for Blueline](https://developers.google.com/android/ota#blueline)
 - ```$ adb reboot bootloader```
 - [On Phone] Scroll with **Volume Buttons** to "Recovery mode", then press the **Power Button** to select.
 - [On Phone] Wait for Android mascot laying down and press the **Power** and **Volume Up** buttons simultaneously to enter "Recovery Mode".
 - [On Phone] Use **Volume Buttons** to scroll to "Apply update from ADB" and press the **Power Button** to select.
 - [On PC] Check connection with ```$ adb devices```, status should say "sideloaded"
 - [On PC] ```$ adb sideload /path/to/blueline-ota-*.zip``` to install the update
 - [On Phone] Use volume keys to navigate to and select "Reboot System Now"

#### Re-Rooting and Updating Magisk

- Open the Magisk Manager App
- Next to *Magisk Manager* tap "Install" to update the app itself
- Then reboot to fastboot: ```$ adb reboot fastboot```
- Download the latest Magisk zip: Magisk App > Magisk is not installed > Install > Install > Download Zip Only
- Download the latest [TWRP blueline.img](https://dl.twrp.me/blueline/)
- Reboot to fastboot: ```$ adb reboot fastboot```
- Temporariy boot to TWRP: ```$ fastboot boot twrp-3.*.img```
- In TWRP: 

**Refernces:**

- [LifeHacker - "How to Sideload Android 10 Onto Your Pixel"](https://lifehacker.com/how-to-sideload-android-10-onto-your-pixel-instead-of-w-1838072534))
- [XDA How to Root Pixel 3](https://www.xda-developers.com/google-pixel-3-unlock-bootloader-root-magisk/))


