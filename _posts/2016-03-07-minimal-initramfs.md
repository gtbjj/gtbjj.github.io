---
title: "X205TA: Minimal Initramfs"
author: Austin
date: 2016-03-07
categories: [Linux, X205TA
tags: [arch, linux, asus, x205ta, initramfs, kernel, performance]
toc: false
---

### Improving Boot Performance:

Everybody wants their computer to be faster.  That includes 
starting up faster.  This is obviously true if you're 
hosting a server, but even for personal use.  Admitedly, I 
don't think it's that important for a high end desktop rig 
that you leave on (or suspended) all the time. 

However, my current workstation is a modest [Asus 
X205TA](https://www.asus.com/us/Notebooks/ASUS_EeeBook_X205TA/).  
In fact, I have [GitHub repo specifically for tweaking this 
machine](https://github.com/savagezen/x205ta).  At any rate, 
with a portable machine, starting up quickly is paramount.

This post will specifcally cover customizing / [creating a 
minimal Linux 
kernel](https://wiki.archlinux.org/index.php/Minimal_initramfs).  
For more performance options, see [the relevant Arch Wiki 
article](https://wiki.archlinux.org/index.php/improve_boot_performance) 
on the subject.

### My Process:

The Arch Wiki references [this 
tutorial](http://blog.falconindy.com/articles/optmizing-bootup-with-mkinitcpio.html), 
whcih provides a conceptual understanding of what we're 
doing here (*creating a kernel with only the modules 
required to boot your system*) but lacks the specifics for 
this machine (Asus X205TA).

1. Take note of the modules listed in the output of:

    > ```$ lspci -vk | grep "Kernel modules"```

2. Next, take note of the output from

    > ```$ udevadm info --attribute-walk -n /dev/mmcblk0 | 
grep 'DRIVERS'```
    
3. Then check over the output of ```$ lsmod``` with the 
modules the above command found.  You'll need to include 
any dependencies as well. (e.g. sdhci_acpi > sdhci > 
mmc_block > mmc_core)
    
4. Next, take note of what your root filesystem is as 
mentioned in the referenced tutorial.  Likely, the module name is 
just the name of the filesystem, with a few exceptions.

5. Then I created an alternate *mkinitcpio.conf*.  I 
didin't want to bork my existing config during the testing 
stages.  (If you **do not** want to use th eminimal config 
for kernel updates, you'll need to follow this step as well 
)

    > 
    ```
    # cp /etc/mkinitcpio.conf /etc/mkinitcpio-tiny.conf 
    # nano /etc/mkinitcpio-tiny.conf
    ```  

    > 
    * Cut down the *HOOKS* array to only include 
"*base*."  
    * In the "BINARIES" array, include "*fsck*" and 
"*fsck.your_filesystem*."
    * The "MODULES" array should contain the long list of 
modules you've been collecting in the steps above.
    
6. I'll save everyone the trail and error I had to go 
through to find out which ones were essential.  Below is 
the most minimal I could make.

    >
    ```
    /etc/mkinitcpio-tiny.conf
    -----
    MODULES="your_filesystem mmc_block sdhci sdhci_acpi i915"        
    BINARIES="fsck fsck.f2fs"   
    HOOKS="base"
    ```

7. After that, create the kernel image via:
    > ```# mkinitcpio -c /etc/mkinitcpio-tiny.conf -g 
/boot/initramfs-linux-tiny.img```
    
8. Finally, add an entry to your boot loarder which selects 
the custom image.  In my case 
([systemd-boot](https://wiki.archlinux.org/index.php/Systemd-boot)) 
that means:

    >
    ```
    /boot/loader/entries/tiny.conf
    -----
    title Arch Linux i686 - Tiny
    linux /vmlinuz-linux
    initrd /initramfs-linux-tiny.img
    ```

### Results:

There's nothing mindblowing here.  I certainly wouldn't 
complain too much about the single digit boot time I 
achieved before this process, but it was worth an afternoon 
of tinkering.

#### Image Size:

> Before

```
$ du -sh /boot/initramfs-linux.img
-----
3.1M    /boot/initramfs-linux.img
```

> After

```
$ du -sh /boot/initramfs-linux-tiny.img
-----
2.9M    /boot/initramfs-linux-tiny.img
```

#### Boot Time:

> Before (mount options: rw intel_idle.max_cstate=1)

```
$ systemd-analyze
-----
Startup finished in 4.425s (firmware) + 174ms (loader) + 
1.363 (kernel) + 2.876s (userspace) = 9.630s
```

> After (mount options: rw intel_idle.max_cstate=1 discard 
relatime noacl background_gc=on inline_data active_logs=6)

```
$ systemd-analyze
-----
Startup finished in 3.423s (frimware) + 166ms (loader) + 
2.71s (kernel) + 1.558s (userspace) = 7.864s
```

PS:  Other Boot Performance Tips Include:  removing daemons 
that start on boot, tuning your filesystem's mount options, 
set your bootloader's timeout delay to 0 seconds.
