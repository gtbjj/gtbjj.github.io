---
title: Nexus 6P: Benchmarks, Part I
author: Austin
date: 2016-07-02
categories: [Android]
tags: [android, nexus 6p, rom, root, governor, rom, scheduler, benchmark, performenace]
---

I recently rooted my Nexus 6P and, of course, instantly began searching for "the best ROM."  As mentioned before, I've been 
out of the root game for several years, but I'm going on the assumption that any ROM that still has an active thread on the XDA Developer 
Forums has a fairly prolific feature list.  Basically, theyre all probably pretty good and there are dozens to choose from.

My Personal Picks:

* **Dirty Unicorns**
* **Slim**
* **Pure Nexus**
* **Elementary OS**

To narrow the list of *things-to-test* I set up some polls on Google+.  As an Arch Linux user I'm attracted to minimalism, so my ROM choices are biased there.  But, I try to contribute to FOSS where / when I can so what better place to begin than its community?  In addition to dozens of ROMs, there is also a dizzying array of I/O schedulers and CPU governors ([XDA has a nice list here](http://forum.xda-developers.com/general/general/ref-to-date-guide-cpu-governors-o-t3048957)).  Some governors even have published custom configuration "profiles."  Obviously I can't test everything.

[Voted ROMS](https://plus.google.com/u/0/+AustinHaedicke/posts/XhiBqsZFFvk):

* **Chroma (> 62)**
* **Krexus (> 14)**
* Exodus (> 8)
* Vanir (> 2)
* Ressurection Remix (2)
* Cyanide (2)
* Vanilla Unicorn (1)
* AOSiP (1)

My (imperfect) testing process will go something like this:  Flash a ROM and run benchmarks on the **bold** features listed herein at their default values. Then, begin tracking battery and CPU usage as well as uptime. Next, run benchmarks on altrenate I/O schedulers or CPU profiles, reset to default settings. Minimum runtime goal is 50 hours to try and compensate for day-to-day variance and offset the benchmark spikes.

[Voted Governors](https://plus.google.com/u/0/+AustinHaedicke/posts/7VH9CvAA473)

* **Interactive (family) (> 107)**
* Ondemand (family) (> 24)
* Other (> 9)
* Conservative (family) (> 7)
* Userspace (> 4)

[Interactive governor profiles](https://github.com/Alcolawl/Interactive-Governor-Tweaks/tree/master/angler) ([descriptions](http://forum.xda-developers.com/nexus-5x/general/guide-advanced-interactive-governor-t3269557/post64645746#post64645746))

* **Ghost Pepper**
* **Butterfly**
* **Maddog**
* **A Manually Selected Profile**

[Voted Schedulers](https://plus.google.com/u/0/+AustinHaedicke/posts/UGmJVMmwyen)

* **FIOPS (> 60)**
* **NOOP (> 11)**
* **Deadline (> 10)**
* BFQ (> 7)
* ROW (1)
* SIO (1)

All the data I've collected to date can be found on [this shared Google Sheet](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit?usp=sharing).  A few things to note about the data:

1) **General Benchmarks** - The first page is a comparison of benchmarks from AnTuTu, Quadrant, and Geekbench (both multi and single core).  These are then averaged and sorted by the average score.

2) **Battery Tests** - The second page lists battery statistics.  Runtime is time on battery and not charging; minimum standard is 50 hours (not including charging or powered off periods).  You can also view the *calculator* I use for averaging the "little" CPU's frequency for a given sample period (of which there are typcially 2 - 4 to achieve the 50 hours of runtime).  There is a calculated life estimate based in % used and runtime.  The "composite" total  = (% not in deep sleep) x (estimated life in hours) x (average frequency in MHz).

3) **I/O Tests** - The general benchmarks encompas I/O tests, but AndroBench breaks the results down to the specific I/O tasks.  The purpose of this page is less so for comparing ROM vs. ROM, or Kernel vs. Kernel (that is what the general section is for); but for comparing specific I/O schedulers and given tasks.

If you would like to contribute to the project, you can do any of the following:

* Fill out a [Google Form for General Benchmarks](http://goo.gl/forms/tPIEtNJ1PvDEvi3z1)
* Fill out a [Google Form for Battery Tests](http://goo.gl/forms/tJeNyxBKto5kS59k1)
* Fill out a [Google Form for I/O Comparison](http://goo.gl/forms/P6HndN4XUxKyyQeV2)
* Sharing this Blog - Obviously my data sheet is publicly shared for a reason.  However, please consider supporting my efforts by passing around anything you find useful or enjoyable on this site.
