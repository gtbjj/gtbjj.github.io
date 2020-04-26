---
title: "Wireless Printing with CUPS"
author: Austin
date: 2016-04-21 23:45:00
categories: [Linux, Printing]
tags: [arch, linux, applications, network, printer, wireless, cups]
toc: false
---

<img style="float: right; height: auto; width: 25%" 
src="http://hplipopensource.com/hplip-web/images/cups_left.png">

[CUPS](https://wiki.archlinux.org/index.php/CUPS) is a commonly used 
daemon for configuring and using network printers.  Here I'll describe a 
simple set up that I use for Arch Linux.

### 1) Installation:

- Connect printer and computer to wireless network.
- Install the requisite software:

```# pacman -S cups ghostscript gsfonts```

- Initialize the cups daemon:

```# systemctl start org.cups.cupsd.service```

### 2) Configure printer through web interface:

Once your printer is connected to your WiFi network, you can check it's 
setting for the ip address (something like *192.168.1.3*).  Or, you 
can run the following which should output an ip address if a printer is 
connected:

```# lpinfo -v```

Now, fire up your browser and put *localhost:631* in the browser.  
That should bring you to the CUPS web interface.

- Click *Administration*
- Click *Add Printer*
- Select *http* or *ipp* (*App/Socket* for HP printers)
- For *Connection* enter *socket://ip_address_of_printer*
- *Continue* and enter *Name* (*Description* and *Location* optional)
- Continue and slect appropriate *Manufacturer* and *ppd*

### 3) User Groups:

You will probably want to configure things so that you do not need *sudo* 
permissions to print things, so:

- In your browser go to *http://localhost:631/printers/printer_name*
- Select *Maintenance* and *Set Allowed Users*
- Enter *username*
- Tick *allow these users to print*
- Click *set allowed users* and enter root credentials

*NOTE:*  This also allows yo uto run other printing related tasks (such as 
in aliases below) without sudo.

*NOTE 2:*  You could also add your user to the systems group that controls 
printing, however, in Arch this is the *sys* group.  The above method 
accomplishes the printing goal without compromising other restriction.

### 4) Printing:

You can then print with either the *lpr* or *lp* commands.  I've 
had better success with *lp*.  A basic syntax would look like:

```$ lp -d printer_name file_name.pdf```

A number of aliases can be convenient for more memorable naming 
conventions as well.  Such as:

```
~/.bashrc
-----
# start / stop daemon
alias printer-on="sudo systemctl start org.cups.cupsd.service"
alias printer-off="sudo systemctl stop org.cups.cupsd.service"

# list default printer
alias printer-default="sudo lpadmin -d $*"
# and / or
alias printer-status="sudo lpstat -s"

# list available printers
alias printer-list="sudo lpinfo -v"
```

### Misc:

- Boookmark / App:  You can [create a custom Chrome 
app](https://gtbjj.github.io/linux/networking/applications/2016/04/02/1122-Custom-Chrome-Applications.html) 
to easily access your printer settings from the browser, or simply 
bookmark or remember *localhost:631*.
- I've found that some encodings get messed up very very badly when 
printing from Google Drive / Cloud Print.  This also happens with MS 
Office filetypes (.xlsx, .docx, etc) for me.  A simple workaround is to 
export the file as a PDF (many office suites support this feature) and use 
*lp* to print the *pdf* instead.  If you export to */tmp* you don't 
have to worry about deleting the duplicate file either.  It will be 
cleared on shutdown.
