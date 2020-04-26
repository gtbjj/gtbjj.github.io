---
title: URXVT Copy and Paste
author: Austin
date: 2016-04-29 22:50:00
categories: [Linux]
tags: [arch, linux, urxvt, xclip, termianl, copy and paste]
---

[Urxvt](https://wiki.archlinux.org/index.php/rxvt-unicode) is an 
awesome terminal emulator for it's light weight, power, and 
customization.  However, you may miss simple and convenient *ctrl + 
v* pasting that more cumbersome terminals provide.  Thankfully 
there are several options available!

### Built In Functions:

After reading the [man page 
documentation](http://pod.tst.eu/http://cvs.schmorp.de/rxvt-unicode/doc/rxvt.1.pod#THE_SELECTION_SELECTING_AND_PASTING_) 
I found out that Urxvt does accomodate this.

* Copy

> Check your window manager's MOD key.  That is what the man page 
refers to as the *Meta* key.  To copy, highlight the text you want 
to copy and simply middle click the mouse.

* Paste  

> There are two options here, either *Shift + instert* or *Control 
+ Mod/Meta + v*

### Perl Scripts / Extensions:

I won't take credit for what's not mine, but you can use *xclip* 
and *perl* to use the more common *Control + v* pasting option 
([instructions here](https://nixmeal.wordpress.com/2012/07/24/copypaste-text-in-urxvt-rxvt-unicode-using-keyboard/)).

Also,

* selection-to-clipboard:

> This option tells Urxvt to move what it selects to 
CLIPBOARD (so what you copy from the terminal you can also paste in 
it, or elsewhere).  In your *~/.Xresources* find the 
*URxvt.perl-ext-common:* line and add *selection-to-clipboard*
