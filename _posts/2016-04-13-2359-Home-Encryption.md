---
layout: post
title: Home Folder Encryption
excerpt: "Encrypt your home folder / partition and decypt on user login"
category:
- Linux
- Backup and Security
tags:
- linux
- backup and security
- encryption
- dm-crypt
- home encryption
comments: true
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

I followd the [corresponding Arch Wiki article](https://wiki.archlinux.org/index.php/Dm-crypt/Mounting_at_login) word for word and it was 
pretty straight forward.  A few tings to keep in mind though:

- I couldn't quite get something right with the manual scripting, so opted for the *PAM* process; which was easy enough.
- Watch out for those dang ```\x2d```s when making the system service.
- By only encrypting ```/home``` you'll save some system boot time, but loging in takes notably longer.  There's still the benefit of a faster 
boot if you just need to startup, login as *root*, and fix something (for example).
