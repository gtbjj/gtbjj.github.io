---
---

Main Process:
- target_loads: most used freqs (big and little) get max efficient load (384,460,600,1248,max / 384,633) others get min
- hispeed_freq: most used freq (big and little)
- above_hispeed_delay: (little) if freq >= 2% use, then 20000; if >= 1%, then 10000; else 0
- above_hispeed_delay: (big) if freq >= 5% use, then 50000; if >= 0.1%, then 20000; if >= 0.01%, then 10000; else 0
- other settings: compromise ghost pepper, butterfly, eclipse, cyan lion, 
heimdal, and dark spice -> most common / unanimous, average value
- general goal:  aggressive, fast-up-fast-down Big; smooth and conservative(ish) LITTLE


I decided to make testing out profiles for the Interactive Governors it's 
own section of my testing process as well as a much later section.  
Initially I planned to include it in the [part 3]() section dealing with 
custom kernels.  

However, after some research I found that such profiles 
weren't really intended to improve performance; but rather to maximize 
efficency based on one's personal usage.  Typically that means minimizing 
performance loss while maximizing screen on time (opposed to simple 
battery life).

If you can't tell, my motive throughout this process is to first maximize 
performance, and then make battery compensations where needed.  So, that 
lands us here.

The references below provide all the information you need to re-create my 
process here, however I'll share some valuable information.

First, we have *nominal* (usage) rates.  These are theoretically the most 
used frequencies (which will vary person to person based on task and what 
is "good enough").  These freuqencies are the ones we want the Interactive 
governor to sit on a bit before ramping up (too soon).

#### Establishing Target Loads:

**1) Nominal Usage Rates:**

```
Nominal Rates (soniCron)
- idle 384
- page scrolling 460-600
- video 768
- app load 1344
- high load 1555

```

SoniCron's tasks are a good start, but I decided to collect data of my own 
and see which frequencies I was actually using the most.  Simply enough, this only required a spreadsheet, and a screenshot from kernel auditor 
before I plugged my phone in to charge.

```
```

In combination with that data, I used the following min / max efficient loads for the LITTLE and Big CPUs to set the *target_loads* value.

**2) Min / Max Efficient Loads:**

```
LITTLE max efficient loads:
- 384000:75
- 460000:69
- 600000:80
- 672000:79
- 786000:70
- 864000:81
- 960000:69
- 1248000:84
- 1344000:82
- 1478000:86
- 1555000:99

LITTLE min efficient loads:
- 460000:20
- 600000:30
- 672000:12
- 768000:14
- 864000:13
- 960000:11
- 124800:30
- 1344000:8
- 1478000:10
- 1555000:5

Big max efficient loads:
- 384000:72
- 480000:68
- 633000:74
- 864000:81
- 960000:69
- 1248000:84
- 1344000:84
- 1440000:84
- 1536000:85
- 1632000:85
- 1728000:85
- 1824000:84

Big min efficient loads:
- 480000:25
- 633000:32
- 768000:21
- 864000:13
- 960000:11
- 1248000:30
- 1344000:8
- 1440000:7
- 1536000:7
- 1632000:6
- 1728000:6
- 1824000:6
- 1958000:7
```

#### Other Settings for Big Cluster:

I wanted the Big CPU cluster to be used as a "boost" CPU.  Basically, I want it to run hot and drop fast, so I used the [MadDog profile 
settings]() with the exception the following target loads mentioned in the process above.

```
```

#### Other Settings for LITTLE Cluster:

My target goal here was smoothness so I used my custom defined target loads and first copied the shared settings on the [Ghost Pepper]() and 
[SilverFish]() profile settins.

For the differences between the two ####################

#### I/O Schedulers and Settings:

A [post on Andoroid Modder's Guide blog](http://androidmodguide.blogspot.com/p/io-schedulers.html) suggests NOOP as a battery saving scheduler 
and FIOPs as a general performance scheduler, whcih seems accurate in my exerience.  Thus, my custom profile first sets NOOP as the scheduler, 
then FIOPS if it is available (which overides the previous setting).

**read_ahead_kb:**
random read and write bench 3x average:
- 128
- 256
- 512
- 1024
- 2048
- 3072
- 4096



#### Complete Profiles:

- data on published profiles
- creating my own, why?
- data on my profile(s)

-----

#### References:


[Original 5x thread](http://forum.xda-developers.com/nexus-5x/general/guide-advanced-interactive-governor-t3269557)

[Nexus 6P Thread](http://forum.xda-developers.com/nexus-6p/general/guide-advanced-interactive-governor-t3290605)

[Post with N6P Min/Max Loads](http://forum.xda-developers.com/nexus-6p/general/guide-advanced-interactive-governor-t3290605/page2)

[Interactive Settings](https://layer8problem.wordpress.com/2012/10/01/interactive-governor-settings/)

[Kernel Documentation](https://android.googlesource.com/kernel/common/+/a7827a2a60218b25f222b54f77ed38f57aebe08b/Documentation/cpu-freq/governors.txt)

[Scheduler Information](http://androidmodguide.blogspot.com/p/io-schedulers.html)
