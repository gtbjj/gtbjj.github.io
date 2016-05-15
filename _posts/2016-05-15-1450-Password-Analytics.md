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

In this day and age people have many, many, many online accounts and far more than just a handful of important numbers and passwords to 
remember.  You can easily Google arguments both for and against password manager tools.  Personally, I *never* let my browser remember 
passwords, but I do use an offline password manager.

In my opinion that is safer than having crap passwords for everything.  I do have a "default" password for *accounts I don't care about*, 
but there are some things that need to be very secure but aren't used every day (think financial).  Random generators are very useful here.  On 
the other hand there are accounts that are used multiple times per day (email, Google, social media, user/root password, etc...) and need to 
be secure.  A password manager seems inconvenient here, so the passwords need to be memorable, yet sufficiently complex.

At any rate, in contrast to my *default* or *lazy* password (mentioned above); my password mangaer has a *super* password.  However, the length 
of it instigates frequent typos and much frustration.  That prompted me to do a some analytics.  [Passwordmeter](http://www.passwordmeter.com/) 
gives a percentage score based on positive password attributes versus negative ones. 
 [Howsecureismypassword](https://howsecureismypassword.net/) provides some of the same warnings, but also an estimate of how long it would take 
a computer to randomly guess your password.

Of course, the metrics aren't perfect, but they provide a comparrision.  That is what was after.  *Can I craft a password easy (to remember), 
sufficiently difficult (to be broken), and practical (for the use case)?*  For that last bit -- do you really want to enter a 24 character 
random combination of letters, symbols, and numbers, every time you want to unlock your phone?

Here were my results:

| **Password Name**	| **Password Meter (%)**	| **Random Guess Time**				|
|-----------------------|:-----------------------------:|-----------------------------------------------|
| Lazy			| 46				| 16  Hours					|
| User			| 50				| 1   Month					|
| **SU**		| **100**			| **3   Million (10\*6) Years**			|
| Android		| 52				| 52  Milliseconds				|
| **PwManager**		| **100**			| **11  Quattuordecillion (10\*45) Years**	|
| Router (admin)	| 74				| 200 Years					|
| **Router (wifi)**	| **100**			| **32  Octillion (10\*27) Years**		|
| BIOS			| 11				| 1   Day					|
| **Google**		| **100**			| **19  Septillion (10\*24) Years**		|
| Facebook		| 99				| 586 Trillion (10*12) Years			|

In answering the above question, it is possible to create passwords that are both strong and memorable (Google suggestions).  I still hold, 
though, that the extra effort isn't needed for the things you don't need to rely on daily and are comfortable using a well protected passowrd 
manager for.

A few things to remember:

- Length isn't always better.  That may increase the "random guess time", but a string of very common dictionary words is next to useless (but 
you can remove some vowels or use other non-conventional spellings to help).
- Be careful about numbers.  Throwing your birth date or social security number into your bank account's password is the last things you should 
do.  (In contrast, consider a pet's birthday, parents' anniverssary, high school jersey number, etc...)
- There are some mixed opions about su8stituting numbers/symbols for letter.  I think it's helpful, but with common sense.  If the password is 
short, then (for example) *austin* isn't much different than *@ustin*.  But consider those vs. *iam@ustin* vs. *@ustin'sAustin* vs. 
*@u$tin's^u5t1N*.
