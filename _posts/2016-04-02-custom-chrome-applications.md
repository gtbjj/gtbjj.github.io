---
title: "Custom Chrome Applications"
author: Austin
date: 2016-04-02 11:22:00
categories: [Linux, Chromium]
tags: [linux, chrome, chromium, applications, web apps, local server]
toc: false
---

<img style="height: auto; width: 100%" src="https://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPdWNQMjhsaUxKNGs">

Creating custom / local Chrome Applications isn't a novel concept.  However, using that information in conjunction with my Linux applications 
that use a browser-based front end; as well as a handy Chrome application (made by someone else) was new to me and I found it extremely 
convenient and useful.  Basically, the information isn't new, but the process of putting all together was something I'd never thought of 
before.

### Overview:  Web Apps, Servers, and Bookmarks

**Web Apps**:  Google Chrome's ability to install browser-based applications means that they are essentially agnostic of the operating system 
they run on (given the dependency of chrome or one of its variants).  You probably spend a good deal of time in your browser anyway so lets 
make it a bit more practical.

**Servers**:  If you're a Linux user you probably make use of some server based apps, or apps that (can) run a web-base graphical user 
interface through your web browser.  What is actually happening here is that the app is runing a small local server on your home network.  
Examples include [Syncthing](https://gtbjj.github.io/linux/backup%20and%20security/2016/02/20/Syncthing.html), 
[Transmission](https://trac.transmissionbt.com/wiki/WebInterface), and [CUPS printers](https://wiki.archlinux.org/index.php/CUPS).

**Bookmarks**:  Bookmarks, and their respective folders, are useful but it has been my experience they become more clutter than they're worth.  
For somethings they are useful for archival purposes (e.g. I have a book mark folder for 'to read' news and journals and also a folder for 
recipes).  However, when it comes to technichal suppport some Google ninja skills usually find what I want faster than scowering through a, 
perhaps not even relevant now, pile of bookmarks.  At any rate, the above mentioned web apps / servers are usually atop my bookmark list so 
that I have quick access to them.

### The 'New Tab' Page:

There are apps in Chrome's Webstore ([such as this 
one](https://chrome.google.com/webstore/detail/show-apps-in-new-tab/nohbdifokmdgjcbbeobglcbaifinhfip?hl=en)) that will change your '*new tab 
page*' to the ```chrome://apps``` page.  That eliminates a few clicks in and of itself when you open a new tab all your apps are right in front 
of you.  Just ```Ctl + T```, click, and you're rolling.  There's no scrolling through bookmark lists and no screen clutter (as with the 
browser's bookmark bar itself), not to mention it will clear a few spaces in your said bookmark list.

### Creating Custom Chrome Applications:

There are several guides out there ([such as this one from 
How-To-Geek](http://www.howtogeek.com/169220/how-to-create-custom-chrome-web-app-shortcuts-for-your-favorite-websites/)) that describe the 
sub-five-minute process of creating custom web apps.  The only caveats I found to such guides are that the *.pem* file needs to stay out of the 
root folder when you compile that app, and the icon image *must* be *.png* format.

### Connecting Server Apps:

This process is pretty straightforward and relies on the above linked guide:

1.  Name and describe the application however you'd like.
2.  Google for an image icon (.png format) that you're satisfied looking at every day.
3.  Change the web url to the local address your Linux app uses, something like ```https://192.168.1.2``` and add the port number if needed 
(such as for Syncthing -> ```https://localhost:8384```).
4.  Follow the necessary steps in the above guide.
5.  Install the chrome app liked above to set ```chrome://apps``` as your '*New Tab Page*.'
6.  Enjoy!
