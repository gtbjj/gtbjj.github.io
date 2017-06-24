---
layout: post
title: ""
excerpt: ""
category
- android
tags
- android
- n6p
- Nexus 6P
- flash kernel
- kernel
- root
comments: true
---

At last!  After [much tedious trial and error testing]() I've honed my personal kernel and dubbed it ready 
for a public release.  The [source code]() is available on GitHub and individual features can be tracked.  
The kernel is a fork of [Flash Kernel](), but has been tweaked to suit [my usage habits]().  As I'm still 
new to the developer world, pull requests and suggestions are more than welcome.

**Gamers:** Be warned, that this kernel will likely be *very bad* for you as I am not an avid game and thus 
have nerfed the GPU.


Flash Kernel:  https://github.com/nathanchance/angler
AnyKernel2:  https://github.com/nathanchance/AnyKernel2


~~~
Kernel Profile:
i/o = noop
cache = 128

GPU powersave

vm.min_free_kbytes 32768 (default 6213)

Big/LITTE
disable all boosts
flash CPU gov

LITTLE
hispeed_freq 384000
~~~

#### Features

XDA Thread:  https://forum.xda-developers.com/nexus-6p/development/kernel-ninja-kernel-v1-0-t3437247

#### Download

- [Android File Host]()

<!-- change / simplify GitHub README.md -->
