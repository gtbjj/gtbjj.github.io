---
title: Trusting and Adding PGP Signatures
author: Austin
date: 2016-06-16
categories: [Linux, Security]
tags: [linux, troubleshooting, pgp, arch, signature, pacman, packages, installation]
---

Admitedly, this is a "stolen post" that is more or less for my own personal reference to a much older [post by Allan McRae](http://allanmcrae.com/2011/12/pacman-package-signing-4-arch-linux/).

That post of his get referenced a lot on the Arch Forums, but it's not a problem that I run into very often, and thus it's easy to forget the solution.

Basically, when you have to restore you PGP settings and (after a clean install or some catastrophe) you loose your record of trusted signatures and the follow scenario occurs:

```
# pacman -S gcc-libs
warning: gcc-libs-4.6.2-3 is up to date -- reinstalling
resolving dependencies...
looking for inter-conflicts...
 
Targets (1): gcc-libs-4.6.2-3
 
Total Installed Size: 2.96 MiB
Net Upgrade Size: 0.00 MiB
 
Proceed with installation? [Y/n]
(1/1) checking package integrity [######################] 100%
error: gcc-libs: key "F99FFE0FEAE999BD" is unknown
:: Import PGP key EAE999BD, "Allan McRae ", created 2011-06-03? [Y/n] y
(1/1) checking package integrity [######################] 100%
error: gcc-libs: signature from "Allan McRae " is unknown trust
error: failed to commit transaction (invalid or corrupted package (PGP signature))
Errors occurred, no packages were upgraded.
```
*^ Taken from Allan's post*

Allan's post talks about automating the trust / add process for Arch devs and trusted users, but I haven't run into that error that I can recall -- *I guess I just havne't installed any of their (signed) packages*.

Anyway, you can manually do trust and add PGP keys after you've investigated their source.  For example, when compiling and trying to install a custom kernel I got the above error, stating that ```Linus Torvalds``` was of unknown trust (lol).  So you can check a key server for that person.

```
$ gpg --keyserver pgp.mit.edu --search linus torvalds
-----------------------------------------------------
gpg: data source: http://pgp.mit.edu:11371
(1)	Linus Torvalds <torvalds@linux-foundation.org>
	  2048 bit RSA key 00411886, created: 2011-09-20
Keys 1-1 of 1 for "torvalds linux-foundation".  Enter number(s), N)ext, or Q)uit >
gpg: signal Interrupt caught ... exiting

```

```
gpg --keyserver pgp.mit.edu --search austin haedicke
----------------------------------------------------
gpg: data source: http://pgp.mit.edu:11371
(1)	Austin <austin.haedicke@gmail.com>
	  4096 bit RSA key F2D4612C, created: 2016-03-30
Keys 1-1 of 1 for "haedicke austin".  Enter number(s), N)ext, or Q)uit > q
gpg: error searching keyserver: Operation cancelled
```

Once verified, you can receive (add) that key:

```$ gpg --recv-key <key_id>```

And then locally sign it:

```$ gpg --lsign <key_id>```

-----
* [Additional Reading from The Linux.com](https://www.linux.com/blog/pgp-web-trust-delegated-trust-and-keyservers)

* [Web UI for MIT's Key Server Search](https://pgp.mit.edu/)
