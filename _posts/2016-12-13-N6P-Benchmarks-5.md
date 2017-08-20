---
layout: post
title: "Nexus 6P Benchmarks: Part 5"
excerpt: "Final review of Interactive Governor profiles"
category:
- Android
tags:
- android
- Google
- nexus
- nexus 6p
- n6p 
- performance
- root
comments: true
---

| [Part 4]({% post_url 2016-10-16-N6P-Benchmarks-4 %}) | [Part 3]({% post_url 2016-08-31-N6P-Benchmarks-3 %}) | [Part 2]({% post_url 2016-08-11-N6P-Benchmarks-2 %}) | [Part 1]({% post_url 2016-07-02-1931-N6P-Benchmarks %}) |

-----

I've finished my latest round of testing Interactive Governor profiles.  The image below shows their respective Z-Scores (number of standard 
deviations).  You can see the [previous chart I published on Google Plus](https://plus.google.com/+AustinHaedicke/posts/dTBrr6ZdUG4?sfc=true).

The number in parinthesis is the N value, or the number of samples taken into consideration.  The goal of this testing was to see which 
profiles would offer the best compromise of performance and battery life (specifically Screen On Time).  If you've followed along with this 
post series then you know that the benchmark scores are based on the average of 4 diffrernt benchmarks (from 3 different apps).

A comprehensive log of all the data I've collected can be seen [here on Google 
Drive](https://docs.google.com/spreadsheets/d/1KmZNyyYLXeVFufpmpVK-hl0sieGGy3hC5bjhIXYLU_A/edit?usp=sharing).  If you simply want to know which 
profile offered the 
best performance (based on synthetic benchmarks), look at the green bars (higher is better).  If you just want to know about screen on time, 
that's the purple bars (higher is better).  Lastly, the blue bars are are the average of the SOT Z-Score and Benchmark Z-Score (i.e. overall 
compromoise of performance and battery life).

<img style="height: auto; width: 100%" src="http://i.imgur.com/3cr4fFf.png">

Scripts for all the profiles referneced can be found on my [respective GitHub page](https://github.com/savagezen/scripts/tree/master/android).
