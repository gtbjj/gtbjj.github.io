---
layout: post
title: Mobilie Data Compression Tools (pt. 3)
excerpt: "Comparing Mobile Data Compression Apps - Part 3"
category:
- Android
tags:
- android
- mobile
- data
- compression
- data saving
- nexus 6p
- apps
- review
comments: true
---

*For previous posts in this series please see [Part 
One](https://gtbjj.githu.io/android/2016/03/03/Mobil-Data-Compression-pt1.html)(featuring 
Opera Max) and [Part 
Two](https://gtbjj.github.io/android/2016/03/06/0928-Mobile-Data-Compression-pt2.html)(featuring 
Onavo).*

<img style="float: right; height: auto; width: 40%" 
src="https://lh5.ggpht.com/8NPjF9QKplmkMgTgdrysTCO15HBlQewaT3vc94nn1tNAcRGs2g4X6bcjYeAGoPsRaZY=w300-rw">

This series will conclude with the third app review.  Featured here will 
be [Data 
Eye](https://play.google.com/store/apps/details?id=com.lotusflare.datasensor).

Perhaps the things that stands out most about this app is that you get a 
very grandular control over your apps' data usage.  While this is true in 
Opera Max,and system wide if you're on Android 6.0 Marshmallow, the 
process is a bit reversed.  That is, the app *starts off by blocking all 
apps from mobile data*.  From an OS perspective this doesn't make any 
sense.  What would be the point of a mobile device and ergo mobile data, 
if it is turned off by default?

However, from an app's perspective this makes a lot of sense.  It's a lot 
easier to simply block all aps, then view "*attempted connections*", and 
whitelist the ones I approve than it is to go into each app's setting 
individually and blacklist their data usage.

### Data Savings:

<img style="float: right; height: auto; width: 40%" 
src="http://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPb190bmtJd1hxWjA">

The savings here were pretty sad, about 0.09 MiB when a total of 97 MiB 
were used.  That's less than 1% savings, compared to the whopping 40% I 
got with Onavo.

### Battery Usage:

This was on par with Onavo and Opera Max, ranging from 5 - 15% depending 
on how active the app was that day (e.g. How much mobile data I was using 
and therefore the app is filtering through it's VPN).

### Clarification / Corrections:

In [Part Two of this 
series](https://gtbjj.github.io/android/2016/03/06/0928-Mobile-Data-Compression-pt2.html) 
I was critical of the discovery that Onavo "used" more data than it saved.  
However, I found that this was also the case with Data Eye.  After doing 
some more research and comparing my device's monitoring of data use with 
the respective apps' monitoring, I found that all data being filtered 
through the VPN was counted as being used by the VPN.

This is a bit misleading since  (for example): Instagram gets a lot of 
compression.  Rather than the device itself reporting that Instagram is 
using a high amount of data, the phone will report that (*insert name of 
reviewed compression app*) is responsible for the data use.  In other 
words, Data Eye isn't using that much data, it's just being accused of 
using all the data of the apps (who are actually requesting data) whose 
content it is filtering.

### Series Summary:

- Opera Max
    > Opera Max appers to be the best overall.  It has the second bess 
percentage of data savings and applies across the broadest variety of 
appes.  If you're phone's battery can handle it (e.g. such as on my Nexus 
6p), it's well worth giving it a try.  You'll also get some granular 
control over your apps' data use in case you're not on Marshmallow.
- Onavo
    > Onavo offers the best data compression, but it's use case is 
limited.  If you're just looking for simple and uncomplicated option to 
save you some data, this is you're best bet.  It's free, ad-free, and 
simple to use.
- Data Eye
    > Data Eye meets the previous two in the middle.  It offers the lowest 
percentage of data savings of those apps tested, but it does offer very 
handy granular control that conveniently starts with all apps being 
blacklisted until you approve them.
