---
layout: post
title: "Features App: Rclone"
excerpt: "Review: Sync local storage across multiple cloud platforms."
category:
- linux
tags:
- linux
- arch
- techtuesday
- featured app
- gdrive
- google
- rclone
comments: true
---

<a href="https://rclone.org/"><img src="https://rclone.org/img/rclone-120x120.png" style="max-width: 30%; height: auto; float: right; margin: 5px"></a>

Syncing local storage to the cloud has been a clunky process (at best) for me since I started using Linux in 2012, particularly since I developed a fancy for minimalism and command line interfaces in the years since then.

A few months ago I discovered [Rclone](https://rclone.org/), which has many wonderful features (below).  Other tools, such as [Grive](https://github.com/Grive/grive) have been available, but there are some limitations and inconveniences.  Rclone *feels* more reliable to me, buthonestly that has to do with my perception and Rclone's familiar (rsync) interface.

**Quick notes:**

*(See [full feature list here](https://rclone.org/))*

*Services:*

> Whereas Grive is specific to Google Drive, Rclone supports Google Drive, Amazon S3, Openstack Swift, Dropbox, Google Cloud Storage (not Drive), Amazon Drive, Microsoft oneDrive, Hubic, and more.  This isn't a big deal if you're only looking for a Google Drive client (as I was), but it's something to consider; particularly because you could (for example) use your local machine as a master server to keep Google Drive in sync with Dropbox.  Or, even better, just certain folders to certain services (e.g. pictures to Google Drive, documents to OneDrive, and pictures to Dropbox -- or however you split up your cloud storage).

*Authentication / Set Up:*

> Configuration was fairly simple as Rclone provides online [configuration guides for all services it offers](https://rclone.org/drive/).  For Google Drive it seems to follow a similar authentication process as Grive, but even this seems to work more reliably in my experience.  I chose the simple route of just calling Google Drive "remote" as I don't need anything more complicated at this time.

*Familiar Interface:*

> This was a big one for me.  The syntax for using Rclone is identical to Linux's native Rsync.  Assuming that in my configuration, I've aliased Google Drive as "remote";  ```$ rclone sync /path/to/source_dir remote:path/within/google_drive```.  What's more is that this interface mean that I can sync (and / or exclude) specific folders to specific services or other folder within the same service).  With Grive it was all or nothing.  You sync your entire local folder with all of Google Drive.  That seems silly to me.  I want my important local files backed up to the cloud, not the other way around -- and most of us have 10 - 100 times as much local storage as cloud storage.  Put another way, It's more likely something get spilled on my laptop and fry the hard drive than all of Google's servers get nuked at the same time.

*Official Arch Support:*

> Whereas Grive is only available throught the AUR, Rclone is an [official Arch Linux package](https://www.archlinux.org/packages/?sort=&q=rclone&maintainer=&flagged=).  For me it's not too big of a deal to manually update AUR packages (you can of course use a helper like ```Yaourty``` if youd like), but from what I remember, Grive seemed to frequently break and things didn't get much better with Grive2.  Maybe that was just my experience thought.

*Integration:*

> All of that above leads to great integration in scripting and every day use.  For example, I have 3 simple Rclone commands in my "web extras" script (runs every time I connect to the internet.  That means my stuff's getting backed up regularly, but not causing a huge overhead (in contrast to running Rsync to an external drive every X hours -- obviously more of a problem the more storage you have).