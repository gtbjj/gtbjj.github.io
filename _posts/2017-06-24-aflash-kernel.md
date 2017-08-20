---
layout: post
title:  "aFlash Kernel:  Release Notes"
excerpt:  "Public (beta) release of my personal fork of Flash Kernel for the Nexus 6P"
category:
- Android
tags:
- root
- android
- nexus6p
- n6p
- angler
- kernel
- flash kernel
- aflash
- afk
- release notes
comments: true
---

#### Introduction:

After many laborous months of benchmarking and alpha testing, I'm happy to announce the first public release of my personal kernel for the Nexus 6P (angler) -- Austin's Flash Kernel, or simply, aFlash Kernel.

~~~
Humor:  
It's perfectly acceptable to abbreviate this kernel as 'AFK' -- aka "Away From 
Keyboard".  I'm very much a 'weekend warrior' when it comes to programming, so 
sometimes there are long hiatuses in the development of my projects.
~~~

The project is fork of [Flash Kernel by @nathanchance](https://github.com/nathanchance/angler) and was started as a learning project for me and will henceforth funtion as a devleopment playground, catering features and performance to my usage habits.

#### Why Flash?

Flash Kernel is extremely popular.  It is also extremely feature rich and performs very well.  However, what actually sealed the deal for me was that it's creator published (I can't seem to find them now) several guides for compiling the kernel from source which I found more helpful than the official AOSP guides.

I wanted to learn, found a teacher / resources, learned, did, and give credit where it is due.

#### What does aFlash offer?

aFlash inherits all the features from Flash Kernel.  It is built from the Flash Kernel source code and then patched with additional features of my preference.  At the time of this writing, those *features* are a couple governor (and other setting) profiles that I've found to work well in my testing.  That is, per my [usage habits](https://github.com/savagezen/aflash_kernel/blob/7.1.2-aflash/usage.md).  Your  mileage may vary.

#### How does aFlash perform versus Flash?

| Kernel (Profile) | Est. SOT | Test Time | Battery Used | SOT % | Deep Sleep % |
| --- | :---: | :---: | :---: | :---: | :---: |
| Flash 20170618 (Battery) | 4.02 h | 17.25 h | 106% | 24.7 | 63 |
| aFlash (Beta 1.1 Battery) | 4.31 h | 28.163 h | 163% | 25 | 61 |
| aFlash (Beta 1.2 Battery) | 5.29 h | 20.74 h | 102% | 26 | 63.5 |

<a href="/images/charts/sot-aflash1.2-vs-flash.jpg"><img src="/images/charts/sot-aflash1.2-vs-flash.jpg" style="max-width: 100%; height: auto; margin: 5px"></a>

| Kernel (Profile) | AnTuTu | GeekBench Single | GeekBench Multi | Battery Used |
| :---: | :---: | :---: | :---: | :---: |
| Flash 20170618 (Performance) | 81254 | 1396 | 3258 | 21% |
| aFlash (Beta 2.1 Performance) | 92772 | 1417 | 3353 | 21% |

<a href="/images/charts/benchmarks-aflash2.1-vs-flash.jpg"><img src="/images/charts/benchmarks-aflash2.1-vs-flash.jpg" style="max-width: 100%; height: auto; margin: 5px"></a>

~~~
NOTES:
Flash Kernel tested was built from source on 2017-06-18.

Each benchmark was run three times per kernel.  The average (mean) was used in calculating Z-Scores.  The cumulative total of benchmark tests (N, used for 
computing M and SD) = 204.

Typically when testing battery life I shoot for 30+ hours of "regular use" 
(e.g. not idle while I'm sleeping) or about 150% - 200% battery consumption.  
However, in pushing for this release that was cut short.  Fortunately, my 
Monday - Friday usage habbits remain very consistent.  The cumulative total of 
battery tests (N, used for computing M and SD) = 133.
~~~

#### Downloads and Source Code:

Source Code:  

- [aFlash Kernel on GitHub](https://github.com/savagezen/aflash_kernel)
- Profiles can be found in [my anykernel repo on GitHub](https://github.com/savagezen/anykernel)

Download:

- [aFlash Beta 1.2 - Battery](https://mega.nz/#!8rRV1ayQ!Yto3CehdpN3pPnImGHX6PpQzgI7qDTSaeM_SBr9Z_E0)
- [aFlash Beta 2.1 - Performance](https://mega.nz/#!JiZXDDAY!7P_N0t4NrN5z44kdxLJrEsOHA6iNrrASWeVdBBvCcno)
- [Version Archive](https://mega.nz/#F!1iYWCIwQ!91j96RoB4dcBvLSQCXw0_Q)

All Time Test Records:

- [Shared Google Drive Sheet](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit?usp=sharing)