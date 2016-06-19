---
layout: post
title: Password Analytics
excerpt: "Some quality assurance checks and breif discussion of password strength"
category:
- Linux
- Backup and Security
tags:
- linux
- security
- backup
- passwords
- network
- encryption
comments: true
---

```
Update 5/28/16:

After getting some feedback on Google+ I decided to leave this 
memo instead of re-writing the entire post.  But, I have gone through (6/17/16) and stripped the outight bad advice.

A lot of sites requires special character, caps, etc... on passwords.  
However, this may not be necessary to have strong passwords.  
I've been advised against the PasswordMeter data in the table below 
and to rely more heavily on the "random guess time."  As such, 
unconventional spellings and symbol-letter-substitutions aren't 
necessarily needed.

I believe this is because dictionary type attacks lack AI.  That is, 
they're not contextual.  Your friend might guess you name, 
screenname, or birth date as your password; "austin" for example.  
"austinaustinaustin" might just look like an 18 character word to the 
attacking program.  

Let's look at password / guess time / typing time:

austin			instantly		< 1 seconds
austinaustin		4 weeks			< 2 seconds
austin110585		4 years			> 3 seconds
austinaustinaustin	23 million years	~ 3 seconds
```

> Basically ["the past 20 years have trained us to make passwords that are hard for humans to rmember and easy for computers to 
guess"](https://www.explainxkcd.com/wiki/index.php/936:_Password_Strength) -- that link will help explain the math.  Don't be decieved 
(admitedly as I was) by "common practices" and tools such as [Passwordmeter](http://www.passwordmeter.com/).

-----

In this day and age people have many, many, many online accounts and far more than just a handful of important numbers and passwords to 
remember.  You can easily Google arguments both for and against password manager tools.  Personally, I *never* let my browser remember 
passwords, but I do use an offline password manager.

In my opinion that is safer than having crap passwords for everything.  I do have a "default" password for *accounts I don't care about*, 
but there are some things that need to be very secure but aren't used every day (think financial).  Random generators are very useful here.  On 
the other hand there are accounts that are used multiple times per day (email, Google, social media, user/root password, etc...) and need to 
be secure.  A password manager seems inconvenient here, so the passwords need to be memorable, yet sufficiently secure.

At any rate, in contrast to my *default* or *lazy* password (mentioned above); my password mangaer has a *super* password.  However, the length 
of it instigates frequent typos and much frustration.  That prompted me to do a some analytics.  [Howsecureismypassword](https://howsecureismypassword.net/) provides some of the same warnings, but also an estimate of how long it would take 
a computer to randomly guess your password.

Of course, the metrics aren't perfect, but they provide a comparrision.  That is what was after.  *Can I craft a password easy for me to 
type and to remember but difficult for a computer to guess?*  Do you really want to enter a 24 character 
random combination of letters, symbols, and numbers, every time you want to unlock your phone?

Here were my results:

| **Password Name**	| **Random Guess Time**				|
|-----------------------|-----------------------------------------------|
| Lazy			| 16  Hours 					|
| User			| 1   Month					|
| SU			| 3   Million (10\*6) Years			|
| Android		| 52  Milliseconds				|
| Password Manager	| 11  Quattuordecillion (10\*45) Years		|
| Router (admin)	| 200 Years					|
| Router (wifi)		| 32  Octillion (10\*27) Years			|
| BIOS			| 1   Day					|
| Google		| 19  Septillion (10\*24) Years			|
| Facebook		| 586 Trillion (10*12) Years			|

In answering the above question, it is possible to create passwords that are both strong and memorable (see the link at the top of this psst).

**I apologize if this post seems sporadic.  After being corrected, I removed inaccurate content and outright bad advice I was giving.  See the memo at the top of this post for 
updated and more accurate information**
