---
title: "X205TA: Blutetooth"
author: Austin
date: 2016-06-11
categories: [Linux, X205TA]
tags: [arch, linux, troubleshooting, x205ta, bluetooth]
---

A couple days ago I was excited to see that there was 
progress on our own Arch Wiki (link below) about this 
machine's bluetooth state.  That lead me to again hit up 
the relevant thread on Ubuntu Forums (link below).

1) You'll need some packages to start:

```# pacman -S bluez pulseaudio pulseaudio-bluetooth```

2) Download a [copy of the needed 
firmware](http://filebin.ca/2hN7HT2tEuFH/BCM43341B0_002.001.014.0122.0176.hcd).  
This gets copied to */lib/firmware/brcm/BCM43341B0.hcd* 
(Yes, spell it that way and remove the similar one with 
*lower case naming*).

3) Next, we make a system service for *btattach*:

```
# nano /etc/systemd/system/btattach.service
----------
[Unit]
Description=Btattach

[Service]
Type=simple
ExecStart=/usr/bin/btattach --bredr /dev/ttyS1 -P bcm
ExecStop=/usr/bin/killall btattach

[Install]
WantedBy=multi-user.target
```

4) Fire up the daemons:

```
# systemctl start bluetooth
# systemctl start btattach
```

5) Check your devices, you want something like:

```
$ hciconfig -a
----------
hci0:	Type: BR/EDR  Bus: UART
	BD Address: 43:34:1B:00:1F:AC  ACL MTU: 1021:8  SCO 
MTU: 64:1
	UP RUNNING PSCAN ISCAN INQUIRY 
	.....
	.......
```

6) If it says "DOWN" instead of "UP", then do:

```
# hciconfig hci0 up
```

7) Start up *pulseaudio* via:

```
# pactl load-module module-bluetooth-discover
```

8) Turn on your other bluetooth decvice and have it start 
scanning.  Then, run ```$ bluetoothctl``` and follow the 
[basic bluetoothctl instructions on the 
wiki](https://wiki.archlinux.org/index.php/Bluetooth#Bluetoothctl).


9)  You can then make a simple shell script / alias to 
one-line the process:

```
#!/usr/bin/sh
# bluetooth scripts for Asus X205TA

sudo systemctl start bluetooth
sudo systemctl start btattach

sudo hciconfig hci0 up

bluetoothctl
```
-----

### References:
[Ubuntu Forum 
Post](http://ubuntuforums.org/showthread.php?t=2254322&p=13490336#post13490336)

[Arch Wiki section on Machine's 
Bluetooth](https://wiki.archlinux.org/index.php/Asus_x205ta#Bluetooth)

[Arch Wiki - BT pairs but can't 
connect](https://wiki.archlinux.org/index.php/Bluetooth_headset#Pairing_works.2C_but_connecting_does_not)
