---
title: Home Folder Encryption
author: Austin
date: 2016-04-13 23:59:00
categories: [Linux]
tags: [linux, backup, arch, security, encryption, dm-crypt, home]
---

### Basics:

If you haven't considered encrypting at least part of your Linux machine then you should.  This post isn't a full on lesson in 
cryptoanalytics, it's just to provide some resources and notes to myself for future reference.

As far as summaries go, [Encrypting Your Laptop Like You Mean It](https://theintercept.com/2015/04/27/encrypting-laptop-like-mean/) by *The 
Intercept_* is a good one.  Also, *WIRED*'s [9 Biggest Data 
Encryption Myths Busted](http://www.wired.com/insights/2013/05/9-biggest-data-encryption-myths-busted-2/) is an informative quick read.

Next, you'll want to consider your [threat model](https://wiki.archlinux.org/index.php/disk_encryption#Choosing_a_setup).  In short, that's:

- What do you want to protect?
- From who?
- How do you want to do it?
- How (do you) address weaknesses?

### Data vs Disk:

The next logical decision is to decide on [data encryption vs. disk 
encryption](https://wiki.archlinux.org/index.php/disk_encryption#Data_encryption_vs_system_encryption).  I settled on only encrypting 
```/home``` based on the following:

- Full system encryption was taking a bit to much fiddling (with my currnet system) so I've tabled that for now.
- The data I want to protect is personal data, not system / server / adminstrative content.
- Like a physical safe, when partitions are opened and in use, they can be attacked over the air anyway.  So, on an up-and-running system there 
isn't a protection differnce between the two (corrections welcome).
- Whatever content I may be protecting will be far easier stollen via the interwebs than physically stealing my machine, impregnating it with 
malicious software, and returning it to me (e.g. an [Evil Maid attack](http://searchsecurity.techtarget.com/definition/evil-maid-attack), *see 
below*).
- Giving this a whirl has been on my bucket list for a while!

*NOTE:  As an added precaution against Evil Maid attacks  you should password protect your 
[bootloader](https://wiki.archlinux.org/index.php/Boot_loaders) and BIOS.  The BIOS password won't allow boot options (e.g. to the attachers 
USB drive) to be accessed, thus requiring the removal of the hard drive to complete the attack.*

*NOTE 2:  You could also carry around your ```/boot``` partition on a thumb drive of your own, but I've found these get lost or damaged too 
easily.  For casual use like mine, the inconvenience isn't worth the protection.*

### Getting it Done:

Initially I followed the [corresponding Arch Wiki article](https://wiki.archlinux.org/index.php/Dm-crypt/Mounting_at_login) word for word as it
seemed pretty straight forward.  A few things to keep in mind though:

- Watch out for those dang ```\x2d```s when making the system service.
- By only encrypting ```/home``` you'll save some system boot time, but loging in takes notably longer.  There's still the benefit of a faster 
boot if you just need to startup, login as *root*, and fix something (for example).

As it turns out I had issues with the manual scripting method (above) and resorted to using ```pam_mount```.  This worked out well and didn't take
any more effort.  Simply follow the [directions on the Arch Wiki](https://wiki.archlinux.org/index.php/Pam_mount
).


-----
*Update 04/20/2016* - It could have something to do with the X205TA's funky hardware, or microSD drives (/dev/mmcblkXpY) in general, but I was 
getting frequent error messages from SLiM that it ```failed to execute login command```.  After loging in as root in another tty I found that 
my drives were getting reported incorrectly by ```lsblk```.  ```/``` (written to the internal /dev/mmcblk0p1) was being 
reported by as /dev/mmcblk1p1 (removable microSD) mounted to ```/``` -- this is after the initial boot.  The quick fix was to use node 
names (/dev/mmcblkXpY) rather than UUID in```/etc/fstab```.
