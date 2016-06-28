---
layout: post
title:
excerpt:
category:
- Linux
tags:
- arch
- linux
- troubleshooting
- installation
- android
- i686
- x86_64
- architechture
- x205ta
comments: true
---

[Wiki Section](https://wiki.archlinux.org/index.php/Migrating_between_architectures)

no luck either way

drop in reinstallation

pacman -Qqn > pkglist.off
pacman -Qqm > pkglist.aur

* backup settings and user content and package list
* reformat /boot and / partitions
* base install > mount, pacstrap,...
* reinstall from package list
* rsync /etc, cehck boot congis and /etc/fstab

Gotchas:
* must reinstall /boot as well, otherwise you'll be trying to load a kernel / initial ram space that's a differnet architecture than your 
bootloader (syslinux, grub, etc...)
* you'll need to manually install aur pakcages.  This is only a big issue for esential programs such as your boot loader, window manager, and 
the like.  fortunately, with Aur4 it looks like the the AUR repos have been streamlined and you can curl packages from 
https://aur.archlinux.org/cgit/aur.git/snapshot/package_name.tar.gz
* formerly I was using [systemd-boot](), but could no longer due to the first bullet.  The X205TA's 32-bit boot loader still requires a Vfat 
/boot (or at least /boot/EFI) partition.  So, systemd and syslinux weren't working; because after the reinstallation they were 64-bit programs 
and their boot process / configs were not getting noticed by the machines' BIOS.  So, I (begrudgingly) resorted to GRUB, and was able to 
compile a confg file with (see command).
