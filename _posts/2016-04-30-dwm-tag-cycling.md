---
title: "DWM: Cycling Tags"
author: Austin
date: 2016-04-30 00:40:00
categories: [Linux, DWM]
tags: [arch, linux, dwm, scrolling, tags, arrow keys]
toc: false
---

DWM comes pre-configured with ```MOD + TAB``` to hop between 
recent tags.  You can also hit ```MOD + TAG_NUM``` (e.g. 
alt + {1,2,3,4,5}) to go directly to that tag.  However, 
that is a bit of a stretch one handed and a tad 
inconvenient with two.

So, let's configure things to use our arrow keys to 
incrementally scroll through our tagged windows.

*Disclaimer:  I did not do any of the C programming here.  
I simply found the [original 
resource](http://ap0calypse.agitatio.org/articles/2012/08/17/cycle-through-your-tags-in-dwm.html), 
but that [author's current 
site](http://ap0calypse.agitatio.org/) appears to have been 
restructured and does not contain the original post any 
more.  I found the material in a old config of mine (yay 
Git!)*

Okay, so open you're *dwm/src/dwm/config.h* file and add 
the following to define the *x_nexttag* and *x_prevtag* 
functions:

```
// custom commads //
 static void x_nexttag(const Arg *arg);
 static void x_prevtag(const Arg *arg);
 static void x_adjtag(int n);
 //     Tag Cycling From //
 //     
ap0calypse.agitatio.org/articles/2012/08/17/cycle-through-your-tags-in-dwm.html 
//
 static void x_prevtag(const Arg *arg) {
     (void)arg;
     x_adjtag(-1);
 }

 static void x_nexttag(const Arg *arg) {
     (void)arg;
     x_adjtag(+1);
 }

 static void x_adjtag(int n) {
     {
         int i, curtags;
         int seltag = 0;
         Arg arg;

         /*
          *     * Check first tag currently selected.  If 
there are
          *         * several tags selected we only pick 
first one.
          *             */
         if (selmon != NULL) {
             curtags = (selmon->tagset[selmon->seltags] & 
TAGMASK);
         } else {
             return;
         }
         for (i = 0; i < LENGTH(tags); i++) {
             if ((curtags & (1 << i)) != 0) {
                 seltag = i;
                 break;
             }
         }

         /*
          *      * Calculate next selected tag wrapping 
around
          *           * when tag overflows.
          *                */
         seltag = (seltag + n) % (int)LENGTH(tags);
         if (seltag < 0)
             seltag += LENGTH(tags);

         arg.ui = (1 << seltag);
         view(&arg);
     }
 }
```

Next, configure your key bindings in the same configuration 
file.  Something like:

```
        { MODKEY,               XK_Up,          x_nexttag,      
{0} },
        { MODKEY,               XK_Down,        x_prevtag,      
{0} },
```

Simply rebuild / install the package, restart *dwm*, and 
your done.  You can now use *up / down* or *left / right* 
to incrementally scroll through your windows.  Awesome!
