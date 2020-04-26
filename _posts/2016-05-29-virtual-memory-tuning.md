---
title: Virtual Memory Tuning
author: Austin
date: 2016-05-29 01:41:00
categories: [Linux, Performance]
tags: [linux, systemd, performance, virtual memory, swappiness, writeback, laptop mode, background ratio, dirty]
---

I got to looking into managing memory and power settings 
lately which led me to a slew of *vm* settings.  This is 
configured through a system daemon 
(*/etc/sysctl.d/daemon_name.conf*).  In this case I'm 
working with virtual memory, so with good sense I dubbed 
the file *vm.conf*.  The descriptions below are from 
examples in the Arch Wiki.

### Swappiness:

I have [mentioned swappiness before]({% post_url 2016-05-06-tweaking-swappiness-for-performance %}).  The same rules apply.

```
/etc/sysctl.d/vm.conf
-----
# Swappiness (0 - 100)
# low   = LESS swap use
# high  = MORE swap use
vm.swappiness=100       # default 60
```

###  Dirty Writeback:

```
# Drity Writes (frequency)
# Decreased to save power per Arch Wiki
vm.dirty_writeback_centisecs = 6000
```

### Dirty Ratio:

Per the Wiki's recommendation I scaled the values to match 
my X205TA's 2 GiB of RAM.

```
# Dirty Ratio (default 10%)
# Percentage of total system memory, the number of pages at which 
# a process which is generating disk writes will start writing 
# out dirty data. 10% sane for 0.5 GB RAM, too much for greater
vm.dirty_ratio = 3      # default 10
```

### Dirty Background Ratio:

Similar scaling took place here.

```
# Dirty Background
# Percentage of total system memory, the number of pages at which 
# the background kernel flusher threads will start writing out 
# dirty data. 5% sane for small mem, too great for large
vm.dirty_background_ratio = 2   # deafult 5
```

### Laptop Mode:

This is supposed to enable some kernel modules to help 
laptops, so I simply followed the Wiki's reccomendation 
here as well.

```
# Laptop Mode
# Sane vaule to save power per Arch Wiki
vm.laptop_mode = 5
```

### Summary:

At the end of the day you create one file and it will load 
on every boot.  The final thing might look something like 
this:

```
/etc/sysctl.d/vm.conf
-----
# Swappiness (0 - 100)
# low   = LESS swap use
# high  = MORE swap use
vm.swappiness=100       # default 60

# Drity Writes (frequency)
# Decreased to save power per Arch Wiki
vm.dirty_writeback_centisecs = 6000

# Dirty Ratio (default 10%)
# Percentage of total system memory, the number of pages at which 
# a process which is generating disk writes will start writing 
# out dirty data. 10% sane for 0.5 GB RAM, too much for greater
vm.dirty_ratio = 3      # default 10

# Dirty Background
# Percentage of total system memory, the number of pages at which 
# the background kernel flusher threads will start writing out 
# dirty data. 5% sane for small mem, too great for large
vm.dirty_background_ratio = 2   # deafult 5

# Laptop Mode
# Sane vaule to save power per Arch Wiki
vm.laptop_mode = 5
```

-----
References:

- [Arch Wiki - Sysctl / Virtual Memory](https://wiki.archlinux.org/index.php/Sysctl#Virtual_memory)
- [Arch Wiki - Laptop Mode 
Parameter](https://wiki.archlinux.org/index.php/Power_management#Laptop_Mode)
