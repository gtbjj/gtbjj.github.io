---
title: Manual Profile Sync Daemon
author: Austin
date: 2017-03-03
categories: [Linux, Performance]
tags: [linux, psd, profile sync, daemon, performance, arch]
---

Once upon a time I discovered the very convenient [profile-sync-daemon](https://wiki.archlinux.org/index.php/profile-sync-daemon) package in 
the AUR.  This daemon essentially mounts and syncs your user browser profile to tmpfs (RAM) for improved performance and reduced writes to your 
hard drive.  [Similar tools](https://wiki.archlinux.org/index.php/Anything-sync-daemon) exist for other profiles and caches.

At the time I discovered that tool I could comprehend how it worked in theory, but didn't have the technical skills to apply it myself.  That 
has changed.  I always feel a sense of pride and accomplishment when I'm able to figure something out "manually" or the "DIY" way rather than 
relying on pre-packaged toolsets.  I like learning, so when I'm able to learn and apply something, that makes me happy.

So, that brings mere here.  Manually syncing my browser profiles, browser cache, and user cache to tmpfs (which uses RAM).  The basic chain of 
evens goes like this:

- Machine powers on > temporary directories get created
- User logs in > profiles / caches are synced from back up to temporary / volatile directories
- Every 5 minutes, volatile directories are backed up to diskspace.

#### 1) Creating volatile directories on boot.

Navigate to ```/usr/lib/tmpfiles.d``` and you will find a list of files that hte sytem creates on boot.  Now, create a file named 
```cache.conf``` that contains the following:

    #type   path            mode    uid     gid     age argument
    d       /tmp/.cache     0700    1000    1000    -   -
    d       /tmp/.chromium  0700    1000    1000    -   -

Type ```d``` indicates directory, ```path``` is the directory you want to create.  In this case, one for our use cache and the other for our 
brower's things.  ```mode``` refers to directory permissions, and ```uid``` / ```gid``` refer to the user that wil own the directories.

#### 2) Create a backup script and run it.

Something like:

    ~/scripts/tmpfs_cache_backup.sh
    -------------------------------
    #!/bin/sh
    # sync and backup tmpfs cache

    rsync -aAXv /tmp/.cache/ $HOME/.cache-bk/
    rsync -aAXv /tmp/.chromium/ $HOME/.chromium-bk/

Then, you can run the script to make sure everything backs up properly.  

*Note:  Using ```tar``` instead of ```rsync``` doesn't seem to work, specifically when it comes to restoration at login.*

#### 3) Automate the backup process.

For this we are going to use ```cron```.  Add the following to your configuration file (such as ```~/user.crontab```) and activate it with ```$ 
crontab ~/user.crontab```.

    # minute	hour	day_of_month	month	day_of_weekcommand
    */5		*	*		*	*		/usr/bin/sh /home/austin/scripts/tmpfs_cache_bk.sh

#### 4) Restoration and linking directories.

Now that your directories are safely backed up, you can go ahead and remove them.

    $ rm -r ~/.cache
    $ rm -r ~/.config/chromium/Default

Next, we need to create the restoration script that will run when the user logs in.  This is what I use:

    ~/scripts/tmpfs_cache_restore.sh
    ---------------------------------
    #!/bin/sh
    # populate user tmpfs cache
    # for use with ~/scripts/tmpfs_cache_bk.sh

    # restore from backup
    rsync -aAXv $HOME/.cache-bk/ $HOME/.cache
    rsync -aAXv $HOME/.chromium-bk/ $HOME/.config/chromium

    # create links
    ln -sf /tmp/.cache $HOME/.cache
    ln -sf /tmp/.chromium $HOME/.config/chromium/Default

This restores our backup to the volatile folders that get created on boot (and destroyed on shutdown).  Then, it creates symbolic links from 
the newly populated directories (mounted as tmpfs) to the userspace directories where programs will look to find them (e.g. ```chromium``` 
expects to find the Default profile in ```~/.config/chromium/Default```).

#### 5) Login configuration.

Next, we want to make sure the restoration script runs immediately when the user logs in.  To do that we need to edit ```~/.xinitrc```.

    ~/.xinitrc
    ----------
    ...
    ......
    .........
    $HOME/scripts/tmpfs_cache_restore.sh 			# populate tmpfs cache

Finally, make sure both scripts are executable:

   ```$ chmod +x ~/scripts/tmpfs_cache_bk.sh```
   ```$ chmod +x ~/scripts/tmpfs_cache_restore.sh```

Now reboot and enjoy a (theoretically) much speedier browser and user experience.  Cheers!
