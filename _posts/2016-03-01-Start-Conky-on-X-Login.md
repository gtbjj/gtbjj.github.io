---
layout: post
title: Starting Conky with X Login
excerpt: "Simple fix to a simple operation"
category: 
- Linux
tags:
- arch
- linux
- troubleshooting
- conky
- login
comments: true
---

[Conky](https://github.com/brndnmtthws/conky) is a great Linux tool for system monitoring.  It's quite handy to have this "widget" start when you login to your system.

Typically you do this trhrough having something like the following in *~/.xinitrc*.

```
exec ~/.fehbg &
exec ~/scripts/conky_start.sh &
exec /usr/bin/dwm
```

Nothing special there, just make sure *~/scripts/conky_start.sh* is executable.  Lately something's been acting up where I have to manually execute *~/scripts/conky_start.sh* after loging in.  I recall having had this issue before and the solution being quite simple.  Fortunately some wuick Googleing reminded me to put a delay (via *sleep*) on the execution of the *conky* command in *~/scripts/conky_start.sh* like so:

```
#!/bin/sh
sleep 3 &&
conky
```

The crux being that if *conky* starts before *dwm* is up and running, it's going, but you can't see it "under" *dwm*.
