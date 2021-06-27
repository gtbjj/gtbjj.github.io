---
title: "SLIM: Errors with Block Device Naming"
author: Austin
date: 2016-05-06 15:30
categories: [Linux, Installation]
tags: [arch, linux, troubleshooting, slim, block device naming, failed login command, x205ta]
---

SLiM has well documented errors with *systemd*'s shutdown process ([See 
ArchWiki](https://wiki.archlinux.org/index.php/SLiM#Shutdown_or_Reboot_Stalled)).  While this was the root of the problem, the related errors 
I found while working backwards are worth pointing out.

### Failure to mount /boot:

I noticed periodically that my boot process was failing and I was getting dropped to recovery mode.  Of course, the first thing I did was check 
*/etc/fstab* for errors, but found none.  Running ```$ lsblk``` showed that my block devices had been mislabeled.

I don't think this is particularly an Arch or Linux issue, but maybe to do with the MicroSD slots of the Asus X205TA.  */dev/mmcblk0* is the 
onboard card, while */dev/mmcblk1* is the external that I use for a swap partition and backups.  

A proper mount would look like this:

```
NAME               MAJ:MIN RM  SIZE RO TYPE  MOUNTPOINT
mmcblk0rpmb        179:24   0    4M  0 disk  
mmcblk0boot0       179:8    0    4M  1 disk  
mmcblk0boot1       179:16   0    4M  1 disk  
mmcblk0            179:0    0 29.1G  0 disk  
├─mmcblk0p1        179:1    0  100M  0 part  /boot
├─mmcblk0p2        179:2    0   10G  0 part  /
└─mmcblk0p3        179:3    0   19G  0 part  
  └─_dev_mmcblk0p3 254:0    0   19G  0 crypt /home/austin
mmcblk1            179:32   0 29.7G  0 disk  
└─mmcblk1p1        179:33   0    2G  0 part  [SWAP]
```
However, after the initial boot, the devices were getting mixed up (e.g. the system thought */devmmcblk1p1* was the */boot* partition).

- One solution would be to remove the */boot* entry from */etc/fstab* since it technically isn't needed after the boot process.  However, this 
can cause some inconvenience when it comes to things like updating your kernel or initramfs.
- So, I found that using UUIDs in */etc/fstab* took care of this problem just as well.

### Failure to Execute Login Command:

Once I got to past the boot (re)mount problems I was getting "random" *failure to execute login command* errors from SLiM when trying to login. 
 Typically this happens when you've got a typo or other errors in *~/.xinitrc*.  But I had no erorrs there.

I have been using [Home Folder 
Encryption](https://gtbjj.github.io/linux/backup%20and%20security/2016/04/13/2359-Home-Encryption.html) so, next I checked my *dm-crypt* setup 
and everything looked fine.

Remembering the above erros, **I was able to recreate it** by observing that SLiM interferes with the shutdown process.  When a proper shutdown 
occurred, there was *not* a labeling error.  However, when I had to hard reboot (via power button) -- due to SLiM inhibiting the shutdown 
process -- the mislabeling happend on the subsequent startup.

**The solution** here for me was, rather than creating a system call as the Arch Wiki suggests, just a simple shell alias to force SLiM 
to stop before the system tries to poweroff.  Something like:

```
alias shutdown="sleep 1 && sudo shutdown now | sudo systemctl stop slim"
```
