---
title: "X205TA: btrfs vs. f2fs"
author: Austin
date: 2016-04-03 03:03:00
categories: [Linux, X205TA]
tags: [x205ta, asus, arch, linux, performance, filesystem, f2fs, btrfs]
toc: false
---

Over the months that I've owned the Asus X205TA netbook / EeePC I've been logging a good bit of data.  You can view the raw data on my [shared 
Google Drive sheet](https://docs.google.com/spreadsheets/d/14i7ybc_-JLqdcVEF1bdHwsGlWTcbrTFLKl5m0Rdeo8Q/edit?usp=sharing).Specifically for this 
post you'll be interested in the "I/O" page.

I ran simple benchmarks for boot time and with *hdparm* and *iostat* for both BTRFS and F2FS root filesystems.  I also ran the respecive tests 
across all three mainline I/O schedules (cfq, noop, and deadline).  Finally, I checked if there was a differnece in how the filesystems 
responded to my [minimal initrd procee](https://gtbjj.github.io/linux/performance/2016/03/07/2318-Minimal-Initramfs.html).  

### Filesystems:  BTRFS vs. F2FS:

<a href="https://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPOFhwM3h5NUxkTFU"><img 
src="https://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPOFhwM3h5NUxkTFU" style="height: auto; width: 100%"></a>

Most of what I've seen on the [Phoronix Benchmark 
Blogs](https://cse.google.com/cse?cx=partner-pub-0253814508491313:1305299758&ie=UTF-8&q=f2fs+vs+btrfs&sa=Search#gsc.tab=0&gsc.q=f2fs%20vs%20btrfs&gsc.page=1) 
has F2FS consistently edging BTRFS in most domains, though BTRFS is certainly a contender (as is the tried and true EXT4 - not covered here).

You can look at the specifics in the linked spreadsheet, but my results were fairly lopsided.  BTRFS was victorious in only 3 of 21 comprisons.  
Some of the measures were close, but this is congruent with the above in that (even if the edge is slight), F2FS is persistently out pacing 
BTRFS.  I used pretty basic tools, but for more robust testing I'll fall back on the linked Phoronix results.

### I/O Schedulers:  CFQ, Deadline, NOOP:

<a href="https://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPMHJMZFNJTHlZQUk"><img 
src="https://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPMHJMZFNJTHlZQUk" style="height: auto; width: 100%"></a>

This is, by far the more interesting data.  After my system showed clear favor for F2FS, I took a closer look at the data between I/O 
schedulers.  Similarly, I didn't chart the raw data, but the rankings (1st, 2nd, and 3rd) for each test.

Similarly, the graph doesn't tell the whole story, but you can see form the data that some of the results were pretty close.  Ultimately in 
these tests, CFQ seems hit or miss, Deadline was more steady, and NOOP snuck in for the win.  Really, NOOP won the *(individual) boot time 
race* though it appeared to slow down when loadin the extra initram modules.  Also, look those transactions per second!

Looks like it's F2FS + NOOP for my I/O read and write needs... until the next kernel that is!
