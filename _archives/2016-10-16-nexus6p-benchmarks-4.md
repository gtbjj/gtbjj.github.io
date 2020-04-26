---
title: Nexus 6: Benchmarks, Part 4
author: Austin
date: 2016-10-06
categories: [Android]
tags: [android, nexus 6p, rom, root, benchmark, interactive, governor]
---

This post is long overdue, but I've long been plotting a comparison of Interactive Governor profiles for the Nexus 6P.
If you're unfamiliar with the process:  the Interactive Governor is very customizable and can be optimized for a variety
of work loads.  These settings can be saved as "profies" to be loaded when needed.  Of course, work loads and background
tasks vary user-to-user, so there are already many published settings out there.  I set out to see how well they work for
me.

All data from any tests I've ran on the Nexus 6P is publicly available on [this Google Sheet](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit?usp=sharing).  
There you can find many real-world battery tests and benchmark averages.  My comparison of profiles was based on three
components to try and find a best overall pofile that blanance performance and battery:

- Mean Average Benchmark Z-Score
- Mean Estimated Screen on Time (SOT)
- Z-Score Mean from the above

The raw data is available on the linked spreadsheet and the descriptive statistics are as follows:

| Profile | Bench-Z (N) | SOT-Z (N) | Avg-Z |
| ------- | ----------- | --------- | ----- |
| Ghost Pepper | -1.304 (4) | -0.406 (3) | -0.855 |
| Heimdal | -0.265 (3) | -0.105 (2) | -0.185 |
| Cyan Lion | -0.343 (2) | **+1.563** (2) | **+0.61** |
| Dark Spice | -1.831 (2) | -0.488 (2) | -1.159 |
| Butterfly | -2.302 (3) | **+0.4996** (2) | -0.901 |
| hmdrmx1 | -1.666 (2) | -0.366 (2) | -1.016 |
| hmdrmx2 | -1.77 (2) | **+0.337** (2) | -0.717 |
| hmdrmx3 | **+0.28** (2) | -0.71 (2) | -0.215 |
| [Betas](https://github.com/savagezen/scripts/blob/master/interactive-austin.sh) | **+0.546** (6) | -0.625 (4) | -0.04 |
| None | -0.073 (63) | -0.11 (18) | -0.042 |

#### Interpretation:

More samples are needed as 2 or 3 are still very subject to day-to-day variance in usage.  Also, keep
in mind that these numbers are for *my usage habits*.

*Performance:*

> Generally the profiles tested cause a decrease fromt he mean in performance.  The exceptions being hmdrmx3 and my Betas.
The Butterfly profile was a distant last place and several others falling more than 1 SD below the mean (Z < -1).

*Screen On Time:*

> This where Interactive profiles are supposed to make their name.  There were a few more standouts than with the benchmarks:
  Cyan Lion, Butterfly, and hmdrmx2.  Cyan Lion was the clear winner here.

*Overall:*

> We see that commonly there is a negative overall Z-Score which means battery life gains are not worth the performance decrease
or vice versa.  That suggests I'll need to pick between the two.  The Cyan Lion profile was the only one to yield a positive
overall Z-Score.  This is, no doubt due to the small performance hit (Z > -0.5) and large gain in battery life (Z > +1.5).

#### Notes:

- *Betas* - a series of profiles I attempted to make from scratch myself.  Their *target_loads*, *above_hispeed_delay*, and other
settings are based on statistics I collected based on my most used frequencies.
- *hmdrmx1* - Heimdal profile with *target_loads* from Betas
- *hmdrmx2* - Heimdal profile with *target_loads* and *above_hispeed_delay* from Betas
- *hmdrmx3* - Heimdal profile with *target_loads*, *above_hispeed_delay*, and minimum frequencies from Betas
- *Why Heimdal and not Cyan Lion?* - Initially I had some subjective liking for Heimdal and remixed that.  However, the data suggest
that I should repeat the process with Cyan Lion remixes.
- *Android M or Android N?* - Most tests were conducted on M.  There was one N ROM.  Now that I've switched to N that may be a clean
break to focus on further tweaking Cyan Lion.

-----

#### References:

- [Original Guide for Nexus 5X Profiles](http://forum.xda-developers.com/nexus-5x/general/guide-advanced-interactive-governor-t3269557)
- [Forum Thread for Nexus 6P Profiles](http://forum.xda-developers.com/nexus-6p/general/guide-advanced-interactive-governor-t3290605)
- [Post with N6P Min/Max Efficient Loads](http://forum.xda-developers.com/nexus-6p/general/guide-advanced-interactive-governor-t3290605/page2)
- [Scripts and Profiles for Nexus 6P on GitHub](https://github.com/Alcolawl/Interactive-Governor-Tweaks/tree/master/angler)
- [Android Kernel Documentation](https://android.googlesource.com/kernel/common/+/a7827a2a60218b25f222b54f77ed38f57aebe08b/Documentation/cpu-freq/governors.txt)
- [Android Scheduler Information](http://androidmodguide.blogspot.com/p/io-schedulers.html)
- [Notes on Interactive Settings](https://layer8problem.wordpress.com/2012/10/01/interactive-governor-settings/)
