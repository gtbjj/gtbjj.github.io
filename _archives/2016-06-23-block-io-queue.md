---
title: Multi-Queue Block IO Queuing
author: Austin
date: 2016-06-23
categories: [Linux]
tags: [arch, linux, performance, cpu, speed, read, write, x205ta]
---

I happened to be looking over the [Maximizing 
Performance](https://wiki.archlinux.org/index.php/maximizing_performance#Tuning_IO_schedulers) 
page on the Arch Wiki again and found a section I hadn't 
read before.

Apprently, there is a kernel paramater that will *"leverage 
a CPU with multiple cores to map I/O queries to multiple 
queues."*  As a result, *"The tasks are distrubeted across 
multiple threads and therefore to multiple CPU cores..."*

Simply enough, edit the kernel line of your bootloader's 
config file to include:

```
scsi_mod.use_blk_mq=1
```

Before:

```
# hdparm -Tt /dev/mmcblk0
------------
/dev/mmcblk0:
 Timing cached reads:   2608 MB in  2.00 seconds = 1304.82 MB/sec
 Timing buffered disk reads: 326 MB in  3.00 seconds = 108.51 MB/sec

# iostat
---------
Device:            tps    kB_read/s    kB_wrtn/s    kB_read    kB_wrtn
mmcblk0          64.50       835.91        59.19     200476      14196
mmcblk0rpmb       0.01         0.03         0.00          8          0
mmcblk0boot1      0.23         0.90         0.00        216          0
mmcblk0boot0      0.23         0.90         0.00        216          0
mmcblk2           0.81        26.90         0.00       6451          0
dm-0              2.38        23.30         0.50       5588        120

*mmcblk0 is root device
```

After:

```
# hdparm -Tt /dev/mmcblk0
------------
/dev/mmcblk0:
 Timing cached reads:   2968 MB in  2.00 seconds = 1485.04 MB/sec
 Timing buffered disk reads: 332 MB in  3.01 seconds = 110.24 MB/sec


# iostat
---------
Device:            tps    kB_read/s    kB_wrtn/s    kB_read    kB_w
mmcblk0         112.42      1461.30        85.19     198780      12432
mmcblk0rpmb       0.01         0.06         0.00          8      0
mmcblk0boot1      0.40         1.59         0.00        216      0 
mmcblk0boot0      0.40         1.59         0.00        216      0 
mmcblk2           1.43        47.42         0.00       6451      0 
dm-0              2.78        35.85         0.00       4876      120 

*mmcblk0 is root device
```

*Hdparm* reports 13% improvement in cached reads, but only 1% improvement in cached reads.

*Iostat* reports 74% improvement in transactions per second, 75% improvement in reading speead, and 43% improvement in writing speed.

That's not too shabby for a 5 second mod!

*All tests were run immediately after boot and login.*
