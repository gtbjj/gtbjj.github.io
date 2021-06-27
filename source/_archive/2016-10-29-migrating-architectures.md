---
title: Migrating Architectures
author: Austin
date: 2016-10-29
categories: [Linux, Installation]
tags: [arch, linux, troubleshooting, installation, android, i686, x86_64, architecture, backup, x205ta]
---

There are various resons you might want to try this, and I've flopped back and forth between i686 and x86_64 architectures for my X205TA.  I started by reading the [relevant Arch Wiki section](https://wiki.archlinux.org/index.php/Migrating_between_architectures), but didn't have any luck with either of the methods mentioned.

It's a bit of a cannonball approach, but I fell back on a *"drop-in"* backup / install / restore approach.  This is actually the method I use for changing filesystems or other very low level things while preserving my system and data.  As such, this method can also be used for migrating an installation between differnet machines.  Though, there may be hardware specific changes or applications that will need to be addressed aditionally.

#### The Idea:

The idea is simple.  We backup the essential components and data, make the changes we need, then restore the data.  What does this *"essential data"* entail?

- System configurations (```/etc```)
- Official packages
- AUR / unofficial packages
- User data (```/home```)

```
Optional:  Sometimes it's a good idea to include /boot if you have many kernels or init images.  In the exact case here, changing architectures, you'd need to recompile those things anyway so it's not necessary to backup /boot.
```

#### The Process - Backing Up:

1) Mount backup device:
> ```# mount /dev/my_backup_usb /mnt```
2) Backup system configurations:
> ```# rsync -aAXv /etc  /mnt```
3) Backup personal data / user settings:
> ```# rsync -aAXv /home /mnt```
4) Create package lists:
> ```# pacman -Qqm > /mnt/off.pkglist```

> ```# pacman -Qqn > /mnt/aur.pkglist```

*Optional:  If you've got lots of storage space, it will save you time restoring if you use rsync to sync /var/cache/pacman/pkg as that will backup the package files themselves which would just need to be installed rather than pulled down for the Arch Servers first.  If you choose to do that, run "# pacman -Scc" (this removes uninstalled packages from the cahce) so that you're not copying over pacakges you don't currently have installed.*

#### The Process - Changes:

With your system backed up you can now make the desired changes.  To be extra safe, I like to ```unmount and physically remove```the backup volume.  Of course, this isn't necessary, but you'd be in a mighty bad mood if you made a typo and reformatted your backup partition instead of your (already broken) system -- speaking from experience!

If you're changing architectures, you'll now need to boot your LiveUSB.  During the boot menu be sure to select the correct architecture you want to install.  Create your partitions and filesystems if you want to change them, then:

```
# mkdir /mnt/{backup,newroot}
# mount /dev/my_backup_usb /mnt/backup
# mount /dev/root_partition  /mnt/newroot
# mkdir /mnt/newroot/boot
# mount /dev/boot_partition / mnt/newroot/boot
# pacstrap /mnt/newroot base
# genfstab -U /mnt/newroot >> /mnt/newroot/etc/fstab
```

#### The Process - Restoration:

1) System settings:
> ```# rsync -aAXv /mnt/backup/etc/ /mnt/newroot/etc```
2) Personal data:
> ```# rsync -aAXv /mnt/backup/home/ /mnt/newroot/home```
3) Official packages:
> ```# pacstrap /mnt/newroot $(cat /mnt/backup/off.pkglist)```

> -- or --

> ```# rsync -aAXv /mnt/backup/var_cache_pacman_pkg/ /mnt/newroot/var/cache/pacman/pkg```

> ```# arch-chroot /mnt/newroot```

> ```# pacman -U /var/cache/pacman/pkg/*```

5) AUR Packages:
> You'll need to manually install these pacakges, or use an AUR helper such as Yaourt.  Fortunately with AUR4 the AUR is simply organized by package name, rather than in alphabetical sections.  So, you can do something like:

> ```# curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/package_name.tar.gz```

> Alternatively, if you keep your build directories you could have just copied over the  ```*.pkg.tar.xz``` installation file as with the alternate option for official packages.

6) Boot and kernel
> Finally, double check ```/mnt/newroot/etc/fstab```. Then ```chroot``` to ```/mnt/newroot``` and generate a new kernel image via ```# mkinitcpio -p linux```.  And before rebooting, check / install your bootloader (e.g Grub, Syslinux, Systemd-Boot) and it's respective settings.

*Machine Note:  For the Asus X205TA, when using i686 architecture I had the best luck with [systemd-boot](https://wiki.archlinux.org/index.php/systemd-boot), 
however, when on an x86_64 architecture I had to use Grub.*

-----

#### Additional References

- [Wiki - Full Sytem Backup with Rsync](https://wiki.archlinux.org/index.php/full_system_backup_with_rsync)
- [Wiki - Migrate Installation to New Hardware](https://wiki.archlinux.org/index.php/migrate_installation_to_new_hardware)
