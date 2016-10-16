---
layout: post
title: "Nexus 6P Benchmarks - Pt. 2"
excerpt: "Meta-analysis comparing battery and performance 
benchmarks of various ROMs"
category:
- Android
tags:
- android
- nexus 6p
- benchmark
- root
- rom
- performance
- battery
comments: true
---

| [Part 1]({% post_url 2016-07-02-1931-N6P-Benchmarks %}) | **Part 2** | [Part 3]({% post_url 2016-08-31-N6P-Benchmarks-3 %}) | [Part 4]({% post_url 2016-10-16-N6P-Benchmarks-4 %}) |

-----

A couple months ago I began benchmarking ROMs 
for the Nexus 6P, to the tune of 300+ tests.  This marks 
the conclusion of *Phase One* of my mega project of not 
only testing, but learning more about Android (after a few 
years of rust).

### Frist Things First:

You can find [my data spreadsheet](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit?usp=sharing) 
shared publicly on Google Drive.  Phase One involved the 
first two pages.  The first page rankes ROMs by their 
average score between AnTuTu Benchmark, GeekBench single 
core, GeekBench multi-core, and Quadrant Benchmark.  The 
second page ranks ROMs by their calculated maximum 
screen-on-time (SOT).  The third page is *not* for 
comparing ROMs, but i/o schedulers -- which will come at a 
much later phase.

The purpose of this project is *not* to find **the** best 
ROM, but to create a spectrum quantitative data.  Obviously 
certain "must have" features and other intangibles weigh 
heavily in choosing your "daily driver."

#### The Testing Process:

- *Performance*:
	- AnTuTu, Quadrant, and GeekBench were each run for 
a given ROM at its default settings.  The average of those 
results was then computed for the ranking variable.
	- The process was repeated with the ROMs i/o 
scheduler changed to *NOOP*, and again with it changed to 
*Deadline*.
	- The highest average scorer of those three 
(default, NOOP, and Deadline) was again run through all 
three benchmarks with each of the following Interactive 
governor profiles applied: ghost pepper, butterfly, 
silverfish, maddog.

```
DISCLOSURE:

Some early ROMs I flashed weren't given the full treatment as I was still fleshing 
out the process.  Others, later, were cut short if I decided from a particular bug 
that the ROM wasn't going to be my "keeper."
```

- *Battery / SOT*:
	- The (on battery) runtime quota was set at 50 
hours.  Typically that came to 3-5 intervals over 2-4 days.  While arbitrary, it seemed realistic / sustainable and more 
or less capable of accounting for variance in day-to-day 
use.
	- Five pieces of data were collected for every 
interval:  runtime, percent of battery used, screen on 
time, percentage of time in deep sleep, and average CPU 
frequency.  The homebrewed calculator I used for the later 
is also featured on page two of the Google Sheet.
	- The sum runtime and sum percent battery used were 
used to calculate an "estimated lifespan" (of a 100% 
charge).
	- The estimated lifespan and actual screen on 
*percentage* (of total runtime) were used to calulated an 
estimated maximum screen on time.  This is the ranking 
factor.
	- Noted deep sleep is the mean of each 
interval's deep sleep percentage.  Likewise, average CPU 
frequency is the mean of each interval's mean CPU 
frequency.
	- The ROM's kernel is noted as this will be 
relevant in later stages.

```
DISCLOSURE:

Governor and i/o scheduler are noted as well.  Both were noted at the default value 
even though benchmarking with non-default values sometimes took place during testing 
intervals.
```

#### Performance Results:

| Mean across all samples | 25254.05496 |
| Standard Deviation      | 3309.171706 |
| Z = 1                  | 28563.226666 |

You can run more statistical analysis if you want, but just eyeballing the data we can see that:

- Chroma, Slim, and AOSiP did very well (bear in mind, the AOSiP kernel is OC'd a bit).
- There are some Top 20 appearances from Sinless, Exodus, and Bliss.
- 11/20 of the Top 20 had the default i/o scheduler.
- Of the top 20, there were only 5 appearances by custom 
interactive profiles (3 x ghost pepper, 2 x maddog).


| Average Score per I/O Scheduler |
|---------------------------------|
| FIOPS | 28512.75 |
| NOOP  | 25184.33333 |
| BFQ   | 25160.15385 |
| Deadline | 24444.97024 |
| CFQ   | 24326.69792 |

| Average Score per Governor Profile |
|------------------------------------|
| Ghost Pepper | 26240.13889 |
| Default | 25546.9805 |
| Butterfly | 24743.92361 |
| Maddog | 23995.5 |
| Silverfish | 23791.21212 |

#### Battery Results:

| Battery Quick Stats |
|---------------------|
| Mean Est. Lifespan | 21.02 hours |
| Est. Lifespan SD | 3.42 |
| Est. Lifespan Z=1 | 24.447 hours |
| Mean SOT | 3.885 hours |
| SOT SD | 0.3633 |
| SOT Z=1 | 4.249 |

#### Going Forward:

- *Phase 2*:  I will select some personal favorite ROMs / 
top performers (z=1) here and repeat this testing proces 
with a closer focus on *custom kernels*.

- *Phase 3*:  Once I've got a ROM + Kernel combo I like, 
I'll look closer at how Interactive governor profiles 
affect performance and battery life -- as well as manually 
create an optimized profile based on my usage.

- *Phase 4*:  Finally I'll delve into the details of i/o 
schedulers as well as other i/o and build.prop tweaks.

Stay tuned!
