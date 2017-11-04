---
title: "Release notes:  2017-10"
excerpt: "October 2017 build and progress updates"
category:
- Android
tags:
- android
- root
- rom
- kenrel
- release notes
- nexus 6p
- angler
- n6p
---

The [October Android Security Update](https://groups.google.com/forum/#!forum/android-security-updates) came out a bit early this month, but I had (and am still having) issues buliding AOSP with the OPR5.170623.007 branch release.

#### Pure AOSP (upload needed!)

> Development here is stopped as I as having issues and getting strange errors when building from source.  You can [see the Google + post here](https://plus.google.com/+AustinHaedicke/posts/4DbSdhvEMKs?fscid=z13rcbg5dlzjznbcn232sryabxnthbf5h04.1507389596310956).  However, I found out that (sensibly so) I can unpackage the [official OTAs](https://developers.google.com/android/ota#angler) and extract the same(?) system.img, vendor.img, and boot.img.  I've upload each of these for the October release.

- [Download 2017-10 system.img, vendor.img, and boot.img](https://mega.nz/#F!UmxjEAya!HJUnR9-F8qjYUFbI_Y9nYw)

#### aFlash Kernel

> No major changes.  Monthly repo sync with  upstream and rebuild.

- [Download aFlash Kernel 201710](https://mega.nz/#!Frwk3KjS!Fbc4n3yapWzZP4bOYfFav9as2hsVf6oXtTMKdBAoP8I)
- [View all aFlash Kernel Versions](https://mega.nz/#F!1iYWCIwQ!91j96RoB4dcBvLSQCXw0_Q)

#### Austin's ROM

> - With the above issues I've temporarily moved to an [AOSiP](https://github.com/AOSiP) base.  This is a move that I had contemplated in the past due to many features I was seeking already being implemented (by more experienced developers), thus reducing the "from scratch" work for myself.
> - In addition, I've been tinkering with some themeing of a few stock apps (Contacts and Messaging).  
> - I've also been developing a list of stock apps to remove.  This decision is based solely on the bias of "apps I don't use, because I replaced them with others form the Play Store."
> - aFlash Kernel?  Next release?
