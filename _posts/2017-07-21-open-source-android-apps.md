---
title: "App Review: Open Source Android Apps"
author: Austin
date: 2017-07-21
categories: [Android, Review]
tags: [android, foss, open source, app review]
---

This week I tried out several open source alternatives to some of my favorite Android apps.  Some offered more features and a more rich user experience than proprietary alteratives, some offered an easy drop-in-replacement, and a few left quite a bit to be desired.

First, a quick Google search will give you several reources to find library lists of open source android apps:  [Wjikipedia](https://en.wikipedia.org/wiki/List_of_free_and_open-source_Android_applications), [F-droid (actually it's own app store)](http://fdroid.org), and [pcqpcq's library on GitHub](https://github.com/pcqpcq/open-source-android-apps).

---

#### Replacements

<img src="/images/android/icon_qksms.png" style="max-width: 10%; height: auto; float: right">

**SMS:  QKSMS** (replaces Android Messages)

[Source Code](https://github.com/moezbhatti/qksms) \| [Play Store](https://play.google.com/store/apps/details?id=com.moez.QKSMS&hl=en)

> QKSMS looks great, has all the standard features you'd expect and is open source.  I've tried it in the past and have to admit some issues with group messaging.  However, that's not something I do every day so it's not much of an inconvenience at all.  Android Message feels like a "guaranteed to work" SMS app, but this is a good second, or full on replacement.  *NOTE:  If you're using Google's Project Fi the MMS issue has to do with QKSMS not being about to dynamically switch the APN (data provider) between T-Mobile / US Cellular / Sprint.  Because of this, and with Substratum themeing, I actually prefer the stock AOSP messaging app.*

<img src="/images/android/icon_chromium.jpg" style="max-width: 10%; height: auto; float: right">

**Web Browser:  Chromium** (replaces Google Chrome)

[Source Code](https://github.com/chromium/chromium)

> Chrome is esentially chromium (open source) after it has been branded with Google-ness.  Firefox is probably the most well known open source alternative, but Chromium gives a Chrome feel while still being open source.  Strangely, on Android you'll need [a helper app to install Chormium](https://github.com/chromium/chromium).  To sign in and sync you'll need to remove your Google account from your phone then sign in through Chromium and it should be added back.

<img src="/images/android/icon_vanilla-music.jpg" style="max-width: 10%; height: auto; float: right">

**MP3 Player:  Vanilla Music** (replaces PowerAmp)

[Source Code](https://github.com/vanilla-music/vanilla) \| [Play Store](https://play.google.com/store/apps/details?id=ch.blinkenlights.android.vanilla&hl=en)

> I've used PowerAmp for years as in when I first purchased it it was because the app included an equalizer and there weren't that many of those on the then Android Market and phone speakers wer not nearly as "good" as they are now.  That said, Vanilla Music hasn't let me down yet and I use it daily.  My favorite feature might be the intuitive gestures it allows.  That is, not just left/right to skip, but up/down which I have set up to show queue / show library.

<img src="/images/android/icon_antennapod.png" style="max-width: 10%; height: auto; float: right">

**Podcast Player:  Antennapod** (replaces PodKicker)

[Source Code](https://github.com/AntennaPod/AntennaPod) \| [Play Store](https://play.google.com/store/apps/details?id=de.danoeh.antennapod&hl=en)

> I'm not a podcast addict, but there are a select few that I listen to like a zealot.  That said, I'm not too picky about my podcast app's features.  Antennapod packs them in and, while Podkicker is lighter, I don't see any reason not to pick up an open source alternative.

<img src="/images/android/icon_amaze.jpg" style="max-width: 10%; height: auto; float: right">

**File Manager:  Amaze** (replaces EX File Manager)

[Source Code](https://github.com/arpitkh96/AmazeFileManager) \| [Play Store](https://play.google.com/store/apps/details?id=com.amaze.filemanager&hl=en)

> There are two things I need in my file manager, a dark theme and root access.  Both these options have them, however only one is open source.  Amaze has all the features you'd expect, plus the perk of showing file / directory permissions and storage size.  Win.

<img src="/images/android/icon_easy-sound-recorder.png" style="max-width: 10%; height: auto; float: right">

**Sound Recorder:  Easy Sound Recorder** (replaces Smart Recorder)

[Source Code](https://github.com/dkim0419/SoundRecorder) \| [Play Store](https://play.google.com/store/apps/details?id=com.danielkim.soundrecorder&hl=en)

>  Recording audio isn't something I do regularly either, but I think it's one of those simple gadgets (like flashlight) that we've come to expect in our smartphone "toolbox."  Unless you're mixing professional audio you probably don't need anything fance, so this sleek, simple, material desigened open source app is just right.

**System Monitoring:**

<img src="/images/android/icon_bbs.jpg" style="max-width: 10%; height: auto; float: right">

- Better Battery Stats ([Source Code](https://github.com/asksven/BetterBatteryStats) | [Google Play](https://play.google.com/store/apps/details?id=com.asksven.betterbatterystats)):
>> This app has gotten a lot of praise on XDA Forums and rightfully so.  It is a great additional utility the provides much more detailed information about your phone's battery use for both developers and not.  The information is easy to access too.  There are plenty of useful statistical calculations (such as screen-on-time) on the homescreen and numerous graphs to boot.

<img src="/images/android/icon_kernel-auditor.jpg" style="max-width: 10%; height: auto; float: right">

- Kernel Auditor ([Source Code](https://github.com/Grarak/KernelAdiutor) | [Gooogle Play](https://play.google.com/store/apps/details?id=com.grarak.kerneladiutor)):
>> Simply put, the best free system monitorying tool.  It's open source and allows you to delve into the depths of your Android kernel, endlessly tweaking, fine tuning, and "improving" your system.  Gratefully, you can save as many different profiles as youd like.  One word of caution though, I've found that when applying a profile that overides many kernel defaults, the app consumes a significant amount of battery.  However, the effect isn't noticed when the applied settings are baked directly into the kernel.

**VPN:  OpenConnect**

<img src="/images/android/icon_openconnect.jpg" style="max-width: 10%; height: auto; float: right">

[Source Code](https://github.com/openconnect) \| [Google Play](https://play.google.com/store/apps/details?id=app.openconnect)

> Again, connecting over a VPN isn't something I do frequently, but it is occasionally required for my work.  So, instead of using the proprietary Cisco / Symantec "recommended" apps I opted for the open source alternative -- of course, it works fine.

<img src="/images/android/icon_syncthing.jpg" style="max-width: 10%; height: auto; float: right">

**Home Backup Server:  Syncthing**

[Source Code](https://github.com/syncthing/syncthing) \| [Google Play](https://play.google.com/store/apps/details?id=com.nutomic.syncthingandroid)

> There are other home server apps out there (ownCloud, et al.) but the ease of use here made it a dead ringer in my opinion.  It only needs to be as complicated as you want, so you can literally be syncing files wirelessly between your phone and computer in 5 minutes.  You can get a bit more fancy and share specific folders so that all the important data from your phone is synced to your pc and vice versa.  As with all apps of this nature, the first sync will take **a long** time, but the more frequently you sync (less data each time) it get pretty snappy.  Keep in mind though, full funtion is best served when you can leave the server running constantly (e.g. desktop versus laptop).  There is no reason to think though that you couldn't include multiple mobile devices either (e.g. work phone and personal phone, your and spouse / children, etc...)

<img src="/images/android/icon_terminal.jpg" style="max-width: 10%; height: auto; float: right">

**Terminal:  Privilege Terminal**

[Source Code](https://github.com/jackpal/Android-Terminal-Emulator) \| [Google Play](https://play.google.com/store/apps/details?id=com.bluepremium.privilege.terminal)

> There are many terminal emulators on Google Play, even open source ones.  This is the most lightweight one that I could find, so I was delighted to note that it was also open source.  You may find more function elsewhere, but for many tasks this gets the job done as good as any.

**Service Integration:  PushBullet, IFTTT**

<img src="/images/android/icon_pushbullet.jpg" style="max-width: 10%; height: auto; float: right">

- PushBullet ([Source Code](https://github.com/pushbullet) | [Google Play](https://play.google.com/store/apps/details?id=com.pushbullet.android)):
>> *Usually* I am not at a desk for hours on end, but if I were (when I am) it's nice to not have to pick up my phone to respond to every message.  Specifically I use it for remote SMS, but it kindly shows you all notifications from your phone as well.  You can clear them from you remote pc, but clearing them from the mirrored device is a paid feature.  At any rate, I don't see any reason to use Pushbullet for immediate drop-in replacement for other similar services such as Mighty Text.

<img src="/images/android/icon_ifttt.png" style="max-width: 10%; height: auto; float: right">

- IFTTT ([Source Code](https://github.com/IFTTT) | [Google Play](https://play.google.com/store/apps/details?id=com.ifttt.ifttt)):
>> This app probably deserves it's own post (planning on it).  Literally, the usefulness is limitless as you can create your own applet if you can't find one in the boasted 1 billion already in existence.  Since I am a hobbyist "developer" I use this mostly for getting upstream notifications from GitHub sent as an SMS to my phone. This lets me know to push / update my maintained package(s) without constantly checking GitHub.  Also, I've yet to find a good news app that doesn't flood me with crap sooner or later, so it's nice to get an SMS when the blogs / RSS feeds I'm really interested in post something new.

**UI Customization:  Substratum, System UI Tuner**

<img src="/images/android/icon_substratum.jpg" style="max-width: 10%; height: auto; float: right">

- Substratum ([Source Code](https://github.com/substratum) | [Google Play](https://play.google.com/store/apps/details?id=projekt.substratum))
>> I've only recently started dabbling with this, but it's a great innovation.  You no longer need to pick and choose different apps that "kind of match" because you like the themeing; and you certainly don't need an entirely new ROM because you don't like the system / app theming.  You can do all of that right here as a third party application.  It's a great way to give some flare to stock / default apps.  In my case I much prefere dark themes over Google's bleached white.

<img src="/images/android/icon_systemui.jpg" style="max-width: 10%; height: auto; float: right">

- System UI Tuner ([Source Code](https://github.com/zacharee/SystemUITunerRedesign) | [Google Play](https://play.google.com/store/apps/details?id=com.zacharee1.systemuituner))
>>  This is another tool that helps avoid chronic / unecessary ROM swapping in that you can tweak and play with your status bar (and other things) without having to change a single line of code.

---

#### Keepers

There were some apps that I found it too hard to replace for various reasons.  Most commonly it came down to cross platform integration and / or an interface and user experience that I was already used to and didn't see the benefit of learning / using something else.  For example:

**[Google Maps](https://play.google.com/store/apps/details?id=com.google.android.apps.maps)** (vs. [Maps.Me](https://play.google.com/store/apps/details?id=com.mapswithme.maps.pro))

> Case-in-point it feels like I've been using this too much and too often to replace it.  An alternative app would have to offer a major feature bonus and I just don't see that happening.  Even in the case of offline maps, Google Maps lets me choose and adjust any area or region I'd like rather than selecting specific states / countries.

**[Google Calendar](https://play.google.com/store/apps/details?id=com.google.android.calendar)** (vs. [Etar](https://play.google.com/store/apps/details?id=ws.xsoh.etar))

> Etar is a dang good competitor.  It syncs with Google Calendar, so you get the full array of feature (including hot links to Google Maps).  However, the major hang up I've seen with third party apps is the lack of task lists.  The issue has persisted past [Gmail Tasks](https://mail.google.com/tasks/canvas) and [Google Calendar Reminders](https://support.google.com/calendar/answer/6285327?co=GENIE.Platform%3DDesktop&hl=en) -- which I now use for all my to-do listing.  Neither of those features have been included in third party apps, which I beleive is Google's doing.  At any rate it's a feature that I use daily and not having it is a deal breaker.  Sorry Etar, I love your dark theme any way.

**[Google Photos](https://play.google.com/store/apps/details?id=com.google.android.apps.photos)** (vs. [LeafPic](https://play.google.com/store/apps/details?id=org.horaapps.leafpic))

> Again, this is an integration issue.  I'm all for minimalism and open source software; but I also want my pictures backed up safely.  As suggested above, I do this with a home server, but I'd also like a copy in the cloud (that is, backups of the backups) to look at pictures on multiple devices.  Google Photos allows unlimited backups with "high resolution" pictures.  On top of that, Google Photos allows basic photo editiing so you don't need dozens of apps.

**[TypeApp](https://play.google.com/store/apps/details?id=com.trtf.blue)** (vs. [K9-Mail](https://play.google.com/store/apps/details?id=com.fsck.k9))

> In all fairness, I have used K-9 Mail on and off over the years.  I don't need a fancy email app, but various places that I've worked for still (obnoxiously) insist on using Microsoft Outlook.  As such, not all apps work with the OWA even when the approrpiate credentials and proxy settings are applied.  So, for the time being (again), K9 is on the sideline.

**Pocketbook** (vs. [Material Audiobook Player](https://play.google.com/store/apps/details?id=de.ph1b.audiobook))

> The design of Material Audiobook Player is fantastic.  The app itself is simple and works great.  However, the one key feature missing that I actually use more than an audiobook reader is PDF / TTS reader.  If that were included, I'd replace pocketbook in an instant.

---

Got a favorite?  Let me know in the comments!
