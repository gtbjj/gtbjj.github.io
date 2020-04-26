---
title: X205TA: Touchpad and WiFi Resume
author: Austin
date: 2016-06-18
categories: [Linux]
tags: [arch, linux, troubleshooting, x205ta, touchpad, wifi, suspend, resume]
---


1) For WiFi, ```netctl.service``` needs to be restarted.

2) For the touchpad, the kernel module ```elan_i2c``` needs 
removed and reloaded, so

3) Create a custom systemd service

> * (```suspend-resume.service```) that, on resume from 
suspend,
> * executes a script (```/usr/bin/suspend-resume.sh```) 
containing the necessary commands.
> * Then make the script executable and load the systemd 
service.

```
$ sudo nano /etc/systemd/system/suspend-resume.service
-----
[Unit]
Description=Local system resume actions
After=suspend.target

[Service]
ExecStart=/usr/bin/suspend-resume.sh

[Install]
WantedBy=suspend.target
```

```
$ sudo nano /usr/bin/suspend-resume.sh```
-----
#!/usr/bin/sh
# resume wifi and touchpad after suspend

# restart wireless service
systemctl restart netctl

# remove and reload touchpad kernel module
rmmod elan_i2c
modprobe elan_i2c
-----
$ sudo chmod u+x /usr/bin/suspend-resume.sh
$ sudo systemctl enable suspend-resume
$ sudo systemctl start suspend-resume
```
