---

layout: post

title: X205TA - Installing Arch Linux on RAID0

excerpt: "Testing performance of Arch Linux installed over RAID0 on Asus X205TA"

category:

- Performance

- Linux

tags:

- arch

- linux

- raid

- raid0

- install

- f2fs

- boot time

- read/write

- x205ta

comments: true

---


Since I recently upgraded to a Nexus 6p I wanted to find a use for the 32 GB MicroSD card I was using in my old phone.  Conveniently this is the same size as the X205TA's internal storage.  Thinking what to do with this combination, I settled on configuring a RAID0 installation of Arch Linux since I'd never done that before.  Doing so  over MicroSD is also far more difficult to accidently remove or lose than a USB configuration.


### Installation:


More or less, you can follow the [instructions on the Arch Wiki](https://wiki.archlinux.org/index.php/RAID#Build_the_Array).  I pounded the keyboard in rage a few times because, of course, I had gotten inpatient and skipped over something in the Wiki.


The RAID array was failing to assemble at boot time.  I found out that *genfstab* was using the UUID of a single device rather than the that of the RAID array.  You can check this by comparing the output of:


```$ lsblk -f```


To fix this, configure your kernel parameter line and *fstab* to use the array's *LABEL* (e.g. root=LABEL=filesystem_label).  This can be assigned when you format the filesystem (*mkfs.f2fs*).  Many filesystems use the *-L* flag to do this, but f2fs uses *-l*.


### Performance - Boot Time:


Firstly, I checked assorted partition schemes for boot time.  [Creating a minimal initrd](https://gtbjj.github.io/linux/performance/2016/03/07/2318-Minimal-Initramfs.html) had no significant effect here since the *md_mod* MODULE and *mdadm_udev* HOOK are required in the *initramfs.img* for the RAID array to assemble at boot.


<a href="https://drive.google.com/file/d/0B2RH_BSaD6YPNHFzd1VlR0U5UUk/view?usp=docslist_api"><img style="height: auto; width: 100%" src="http://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPNHFzd1VlR0U5UUk"></a>

The boot time data tells us a few things:


1. RAID arrays add to boot time due to needing a second or two to be assembled prior to the filesystem being accessed.

2. The more partitions you have requiring mounting, the more your boot time will increase.

3. Similar to \#2 -- not indicated in this data but also true -- the size of each partition doesn't appear to make a difference.  This is commonly suggested with HDDs because more/less data needs to be *fsck*'d at boot.  In the example here, that's a mute point because A) we're not using magnetic drives, and B) we're specifically using a filesystem that rarely if ever needs a *fsck* (this is true with BTRFS and F2FS).


*More on BTRFS later...*


### Performance - Web Browser:


Due to this machine being underpowered you likely won't be doing a lot heavy compiling and I/O intensive operations -- yes, I realize that is the primary gain of RAID (see below).  Though, I did compile a kernel on the X205TA once -- and only once -- because it took several, and I mean several, hours to finish.


My current set up, because I've been doing a lot testing, actually resembles a hybrid of Arch Linux and a Chromebook (sweet!).  So, here is a comparison of browser benchmarks.  I included my Nexus 6p just to have something to compare against.


<a href="https://drive.google.com/file/d/0B2RH_BSaD6YPT3NKVzctaDcwZ3M/view"><img style="height: auto; width: 100%" src="http://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPT3NKVzctaDcwZ3M"></a>


That data isn't too helpful since I didn't do a pre-test on this machine.  At any rate, I can say that subjectively some heavy apps were a bit sluggish starting up.  In-browser experience was about the same.  (NOTE:  After re-aligning the partitions in the array to have the same start / end locations on their respective devices, in-browser experience did *feel* a bit more snappy).  Of course, mounting *~/.cache* in RAM as tmpfs hosted performance benefits.


Also, [this article](chrome-extension://klbibkeccnjlkjkiokjodocebajanakg/suspended.html#uri=http://www.tomshardware.com/reviews/ssd-raid-benchmark,3485-13.html) is worth reading for some good points on comparing "synthetic benchmarks" to real-life use of RAID.


### Performance - Read / Write:


<a href="https://drive.google.com/file/d/0B2RH_BSaD6YPRXJwZ0h6YkVQUzA/view"><img style="height: auto; width: 100%" src="http://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPRXJwZ0h6YkVQUzA"></a>


No surprises here.  RAID0 provided read/write speeds comparable to the combination of the drives comprising the array (e.g. speed_of_device1 + speed_of_device2 ~ speed_of_raid0).  Using BTRFS's native RAID0 was very impressive on this front, offering somewhere in the neighborhood of a 200% improvement!


### BTRFS:


BTRFS offers the ability to [create a file system across multiple devices](https://btrfs.wiki.kernel.org/index.php/Using_Btrfs_with_Multiple_Devices).  I struggled a bit here, after re-reading the documentation and then trying to span a filesystem across partitions on the *same device* rather than on separate ones (kind of counter intuitive).  As of November 2014 there is an error with either (or both) *systemd* and *mkinitcpio* dealing with BTRFS's native RAID ([source](https://wiki.archlinux.org/index.php/Btrfs#BTRFS:_open_ctree_failed)).  The [solution proposed on the bbs forum](https://bbs.archlinux.org/viewtopic.php?id=193251) did not work for me.  If you happen to get this working, please feel encouraged to [fork or file an issue for this blog on GitHub](https://github.com/gtbjj/gtbjj.github.io).  


I was only able to get BTFS native RAID to boot when rebooting from a live environment.  That is how I was able to include it in some of the benchmarks.  However, subsequent reboots are where it failed with the above error.  This is a shame because, if the read / write benchmarks are any indicator, the potential is quite great.  There may also be the possibility of reducing your *initrd*, which might eliminate the need to weigh RAID's slowed boot time against improved read / write speeds.  You'd theoretically get to have your cake and eat it too!