---
title: App Review: Syncthing
author: Austin
date: 2016-02-20
categories: [Android]
tags: [foss, arch, linux, app, review, android, syncthing, security, backup]
---
<img src="https://avatars1.githubusercontent.com/u/7628018?v=3&s=400" style="float: left">

My favorite backup utility right now has to be 
[Syncthing](https://syncthing.net).  It is simple to implement and use and there 
is no reliance on a third party (e.g. Google Drive, Dropbox, etc...).

We should know by now that one backup is never enough.  Once upon a time I bought 
a 64 GiB thumb drive from Amazon for about $40 and this served as my "*~daily 
rsync*" backup.  This was all good and well and pretty damn nifty to have a 
perfect, bootable, replica of my home pc attached to my hip all day.

However, when I'm not playing system admin at home, I'm usually rock climbing 
somewhere in the [Atlanta-Birmingham-Chattanooga 
Triangle](http://www.seclimbers.org/).  Needless to say I smashed a few of those 
aforementioned thumb drives in the past few years.

Most of us carry dang powerful pocket-god computers around every day, why not 
backup to that!?  Many times I experimented with Google Drive 
([grive](https://github.com/Grive/grive)) and always seemed to come up 
dissatisfied.  I even went so far as to tinker (and have some success) with a SSH 
+ Rsync combo through a home WiFi network.

**But there is a better way my FOSS friends!** Hosting your own local server to 
volley backups to and fro from doesn't have to be as complicated as it seems.  
Yes, maybe [ownCloud](https://owncloud.org/) is a bit more pollished and 
[BTsync](https://wiki.archlinux.org/index.php/BitTorrent_Sync) can do similar 
things.  But, [Syncthing is open 
sourced](https://github.com/syncthing/syncthing)(and free) and is essentially 
effortless to set up.

Maybe you want the simple route of syncing  your phone's pictures back to your 
desktop:

1) Gather the things:
    
	* Install the [Syncthing Android 
App](https://play.google.com/store/apps/details?id=com.nutomic.syncthingandroid)
	* Install the [official Syncthing Arch 
package](https://www.archlinux.org/packages/?name=syncthing)

2) Prepare your phone:
	
	* Open the app and add the relevant folder contianing your pictures
	* Swipe over to ```DEVICES``` and tap the ```+``` on the top-right corner

3) Ready your PC:
	
	* On your desktop do ```$ systemctl --user start syncthing```
	* Navigate to ```localhost://8384``` in your pc's web browser
	* Click ```Actions``` then ```Show ID```

4) Connect the devices
	
	* Tap the QR-Code icon on your phone
	* Snap a pic of the QR-Code on your desktop screen

5) You can then go back on your phone and select which folders to share with the 
*new device*.

Likewise, do some of that in reverse and sync all of *~/home* to 
*/storage/ext_sd*.  Though, for a copmete backup I'd recommend [backing up 
your system 
settings](https://wiki.archlinux.org/index.php/System_backup_and_reinstall#Configurations) 
to somewhere in *~/home* with a simple [cron 
job](https://wiki.archlinux.org/index.php/Cron) as well.

Seemingly contrary to Android 4.4.x KitKat's limitations regarding 3rd party apps 
writing to the external SD Card, there is a work around for this.  You can install 
and app like [OI File 
Manager](https://play.google.com/store/apps/details?id=org.openintents.filemanager) 
to create a folder in */storage/ext_sd*.  Technically the app "*owns*" the 
folder it creates, and thus non-root apps can write there.  Whatever folder you 
create, maybe */storage/ext_sd/pc-backup*, just choos that to sync to 
*~/home*.

Everyday use is easy too.  I have a shell alias set up to A) connect to WiFi via 
*netctl*, B) deploys my firewall via *iptables*, and C) start the 
*syncthing* server.  All I have to do then is launch the app on my phone while 
the PC / Laptop are connected to the same WiFi network.

The initial sync will, of course, take quite a while and very long if you have a 
lot of data.  However, I've found it pretty reliable and snappy after that.  Even 
if you miss a few days, chances are if you launch the app while you're grinding 
away at your deask, your files can sync up nicely before bed.

All in all *syncthing* is simple, savy, easy to use, and just plain gets the 
job done!  Cheers to the devs!

