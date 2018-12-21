---
layout: post
title: Terminal Weather with Adaptive Location
excerpt: "Getting adaptive location based weather and forecast in terminal"
category:
- Linux
tags:
- linux
- applications
- eye candy
- weather
- terminal
- zip code
- forecast
comments: true
---

<img style="float: right; height: auto; width: 40%" src="https://drive.google.com/uc?export=view&id=0B2RH_BSaD6YPTFdMSlI2LU1XbFk">

Recently I published [a post on conky for window 
managers](https://gtbjj.github.io/linux/eye%20candy/applications/2016/04/07/0940-WM-Conky.html).  Since then I've been fiddling with some 
weather information options.  I've temporarily given up on conky in that regard, but that's because of a lovely workaround.  Below the is the 
simplest and most effective solution I could find.

### Weather Information:

Weather Underground still maintains and API.  Yahoo's appears broken.  Even a few years ago, Yahoo's RSS feed still required notable scripting 
to parse the feed.  The simplest similar remedy I've found was to use [NOAA's rss feeds](http://w1.weather.gov/xml/current_obs/) for general 
weather info with  minimal parsing.  (NOTE:  It's thanks to this proces that I finally learned a bit about *sed* and *tr*)

Recently I discoverd [wttr.in](http://wttr.in/) which can be CURLed (```$ curl wttr.in```) to give a good looking forecast and current conditions 
inside the terminal (!).  That's pretty awesome, but the automatic location for wttr.in may not be accurate.  It defaults to Atlanta for me 
and I'm a good 2 hours north of there.  At any rate, NOAA's location codes would have to be changed manually which is a PITA and therefore 
useless if you ever travel outside your home city.

### Adaptive Location Based Updates:

How about 6-digit zip codes?  Wttr.in does allow you to query by zip code:

```$ curl wttr.in/ZIPCOD```

If you manually input the zip code you fall into the same rut as the NOAA codes.  So, let's automate this.  I already use 
[ipinfo.io](http://ipinfo.io/) to fetch other things for *conky*.  Conveniently, this includes your zip code:

```$ curl ipinfo.io | grep postal | tr -d '\"' | tail -c 6```

Putting that with the above you can:

```$ curl wttr.in/$(curl ipinfo.io | grep postal | tr -d '\"' | tail -c 6)```

However, I *would not* put that in your *~/.bashrc* as an alias.  Every time you open a new terminal you'll have to wait for that command to 
queue.  Not a big deal, but if you're working within a wm and open lots of terminals, it adds up.  My preferred workaround is to have a shell 
script run all my internet things upon connection, such as:

- Connection (via *wifi-menu*)
- Firewall (via *iptables*)
- Backup server (*syncthing*)
- Fetch things for conky (such as location at time of connection -- perfect!)

So that fetching section might look like this:

```
net_connect.sh
-----
# fetch things
curl -o /tmp/ipinfo ipinfo.io
cat /tmp/ipinfo | grep postal | tr -d '\"' | tail -c 6 > /tmp/zip
```

And then alias in *~/.bashrc*:

```
alias wttr="curl wttr.in/$(cat /tmp/zip)"
```

### Alternate Aliases:

CURLling wttr.in will give you current conditions and the forecast.  However, you can get only the current conditions with a simple parse. So, you might prefer aliases like so:

```
alias wttr="curl wttr.in/$(cat /tmp/zip) | head -n 7 | tail -c 6"
alias forecast="curl wttr.in/$(cat /tmp/zip) | tail -n +8"
```

### Performance:

Things pull down from wttr.in pretty fast, but we can do better.  I clocked *wttr* at 0.570s and *forecast* at 0.549s.  Let's have a utility 
pull down the data in the backgrond rather than on demand.  Both *conky* 
and *cron* can execute commands on an interval timer.  The below example uses *cron* to fetch the weather every 5 minutes:

```
~/scripts/user.crontab
-----
*/5 * * * * curl wttr.in/$(cat /tmp/zip) | head -n 7 | tail -n 6 > /tmp/wttr
*/5 * * * * curl wttr.in/$(cat /tmp/zip) | tail -n +8 > /tmp/forecast
```

Then update your aliases:

```
alias wttr="cat /tmp/wttr"
alias forecast="cat /tmp/forecast"
```

And you get your weather and forecast each on in about ~0.005s!
