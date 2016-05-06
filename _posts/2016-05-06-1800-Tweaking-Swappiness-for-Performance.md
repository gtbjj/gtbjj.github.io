---
layout: post
title: Tweaking Swappiness for Performance
excerpt:  "Adjusting swappiness based on system needs"
category:
- Linux
- Performance
tags:
- linux
- performance
- swap
- swappiness
- ram
- memory
comments: true
---

A quick memo here on how to persistently set *swappiness*, or pressure for 
the system to use swap space ([swap 
file](https://wiki.archlinux.org/index.php/Swap_file#Swap_file) or [swap 
partition](https://wiki.archlinux.org/index.php/swap#Swap_partition)) 
instead of RAM.

My hardware status has made quite a shift in the past year.  Once upon a 
time I had beefy enough hardware and a minimal enough system that I was 
actually searching for ways to **use more RAM**.  In such a case I would 
want a *swappiness* value of *0* (which is the minimum).

Fast forward to now, where I have very modest netbook and I need to make 
the most of swap space as to keep RAM available for what really needs 
it. For this, I want a higher *swappiness* (100 is the maximum value).

The default vaule is *60*, which you can check with:

```
$ cat /proc/sys/vm/swappiness
-----
60
```

Changing the value of that file won't do any good since it is populated at 
boot.  So, to set things persistently we need to make a system call.

```
# nano /etc/sysctl.d/99-sysctl.conf
-----
# set swappiness (0 - 100)
# low	= LESS swap use
# high	= MORE swap use

vm.sappiness=100	# default 60
```

**To summarize**, you want a low *swappiness* level if you have a ton of 
RAM to use and want maximum performance.  Conversely, if you need to use 
RAM sparingly, you want a high level of *swappiness*.
