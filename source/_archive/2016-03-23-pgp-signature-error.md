--- 
title: "PGP Signature Error"
author: Austin
date: 2016-03-23 23:11:00
categories: [Linux, Backup & Security]
tags: [arch, linux, troubleshooting, security, makepkg, pgp, signature]
toc: false
--- 

I've run into this problem after system restorations in the past and always have to do some Googling to get to the bottom of it.  Thus, I wanted to document the process here so that I have a record of it. The error in question results from running *makepkg* and receiving the following output: 

```==> ERROR:  One or more PGP signatures could not be verified!``` 

For some clarification on the distinction between how *pacman* and *makepkg* use PGP keyrings, read [this post by Allan McRae](http://allanmcrae.com/2015/01/two-pgp-keyrings-for-package-management-in-arch-linux/). 

Per the [relevant Arch Wiki section](https://wiki.archlinux.org/index.php/Makepkg#Signature_checking), if you absolutely trust the package source you can take the lazy way out and instruct *makepkg* to skip signature checking via the ```--skippgpcheck``` flag.

 Alternatively, have have a look at the package's *PKGBUILD*.  There should be an array of *validpgpkeys*.  What you will want to do is copy the given Key IDs into the following command ([1](https://wiki.archlinux.org/index.php/Gnupg#Use_a_keyserver)): 

```$ gpg --recv-keys <key_id>```
