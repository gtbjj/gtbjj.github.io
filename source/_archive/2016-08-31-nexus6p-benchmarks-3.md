---
title: "Nexus 6P: Benchmarks, Part 3"
author: Austin
date: 2016-08-31
categories: [Android, Performance]
tags: [android, benchmark, nexus 6p, root, rom, kernek, performance, battery]
---

#### Review:

After rooting my Nexus 6P I began collecting data on 
various ROMs and schedulers.  Specifically, the data I 
looked at were:

- The average score between:  AnTuTu Benchmark, GeekBench 
(single), GeekBench (multi), and Quadrant.
- Estimated maximum screen on time (SOT) as calculated by 
average screen on percentage in trials multiplied by 
estimated maximum battery life.

My results thus far have been compiled on [this Google 
Sheet](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit).  The third sheet (I/O Compare) is for comparing I/O 
schedulers only.  The fourth sheet (Profile Data) is a beta 
page for the data I'm using to make a custom Interactive 
governor profile (post forthcoming -- I know there are 
many publised settings, but I wanted to roll-my-own).

For further information on the process thus far, please 
see the previous [Part 
One](https://gtbjj.github.io/android/1931-N6P-Benchmarks/) 
and [Part 
Two](https://gtbjj.github.io/android/N6P-Benchmarks-2/) 
posts.

-----

#### Kernel Testing:

I had to start somewhere and *obviously can't cover every 
possible combination of ROM + Kernel + Scheduler + Settings*.  So, the ROMs selected 
for kernel testing were [Chroma](http://forum.xda-developers.com/nexus-6p/development/rom-chroma-11-08-2015-lockscreen-navbar-t3244444) and 
[Slim](http://forum.xda-developers.com/nexus-6p/development/rom-slim6-alpha-t3343367).  I based this on a combination of personal preference 
and (average) benchmark scores.  To narrow the list, in order 
to be considered the ROM (and respective configurations) needed to score +1 
standard deviation above the mean benchmark score for all tests.

After [polling the Google + Community](https://plus.google.com/u/0/+AustinHaedicke/posts/eHq2aDCVLv8), I began testing Slim and Chroma with the 
ElementalX, Franco, and Kylo kernels.  Benchmarks were ran and the top scorer (plus some others) for each ROM/Kernel was then run through a ~50 hour real-world-use trial where I noted uptime, percent battery used, average CPU frequency (LITTLE only), and percent deep sleep time.

#### Results:

Both Chroma and Slim seemed to benefit in performance from Kylo and Franco kernels in benchmark scores.  Chroma faired better with 
Kylo while Slim worked better with Franco.  ElementalX 
seemed to perform underwhelmingly.  I did try to overclock 
ElementalX, but the performance boost was negligible, so I 
nixed it.  

ElementalX *did* give Slim an almost +1 SD benefit in terms 
of estimated SOT.  Even more impressive though, Kylo and Chroma together churned out an estimated 5.8 hours of SOT (that's average over 50 hours of on-battery run time!).  A distant second, but there was improvement for Slim 
when using ElementalX, which brought 4.9 hours of SOT (stil +1 SD above the mean, very good).

#### Going Forward:

I've already started tuning a custom profile for the Interactive governor based on my usage (as you can see on the linked spreadsheet).  I will 
pick two (so that there can be comparison) ROM/Kernel 
combinations to test with the following Interactive profiles:

- Ghost Pepper
- Heimdal
- Dark Spice
- Eclipse
- Cyan Lion
- Butterfly
- [My Custom Rolled Profile](https://github.com/savagezen/scripts/blob/master/interactive-austin.sh)

Thanks for reading, stay tuned!

```
NOTE:  In the interest of time I'm trying to wrap my head
around the Interactive governor and may or may not get to
ElementalX, which I realize is kind of the point of naming
an entire kernel after a featured governor.
```
