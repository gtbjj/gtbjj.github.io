---
title: "AUR SSH Key Error"
author: Austin
date: 2016-04-07 14:05:00
categories: [Linux, Security]
tags: [arch, linux, troubleshooting, development, aur, packages, github, ssh]
toc: false
---

Recently I've been working my way back from a system 
restoration and getting into the swing of things.  I 
maintain a few packages in the Arch User Repository 
([list](https://aur.archlinux.org/packages/?O=0&SeB=m&K=gtbjj&outdated=&SB=n&SO=a&PP=50&do_Search=Go)) 
and run into a slight issue that, forturnately only took a 
bit of time but nothing too complicated to fix.


```
git clone git+ssh://aur.archlinux.org/package_name.git
Cloning into 'package_name'...
Permission denied (publickey).
fatal:  Could not read from remote repository.

Please make sure you have the correct access rights and the 
repository exists.
```

### 1) Generate  Key Pair for AUR:

```
$ cd ~/.ssh && ssh-keygen
---
Generating pblic/private rsa key pair.
Enter file in which to save the key (/home/<username>/id_rsa): aur
...
.....
......
```

### 2) Configure SSH:

```
~/.ssh/config
---
Host aur.archlinux.org
  IdentityFile ~/.ssh/aur
  User aur
```

### 3) Copy You Public Key:
Copy ```~/.ssh/aur.pub``` to your AUR account.  Login at 
[aur.archlinux.org](aur.archlinux.org), 
go to *My Account*, and the *SSH Public Key* box is where 
you'll paste the contents of *~/.ssh/aur.pub*.  Becareful 
though, both when copying and pasting to not add a separate 
new line to the end of the contents or any line-breaks.  
The contents should be all one line with nothing following.

### 4) Pull your packages:

```
$ cd ~/abs && git clone 
git+ssh://aur@aur.archlinux.org/my_aur_package.git
```

### 5) BONUS - Open Sourcing Open Source Software:

Unlike many in the FOSS and Linux communities, I am not a 
professional programmer, system administrator, IT 
professional, or even working in a related field. So...

While you can / must download the source files to build AUR 
packages from scratch (or use an AUR helper), you can not 
make changes to my packages for public consumption.  
*However*, I have put [all of those contents on 
GitHub](https://github.com/savagezen/pkgbuild) as well.  

This means that, and I completely welcome and encourage, you can 
fork and make any complaint, correction, fix, or suggestion 
you'd like and make a pull request / file an issue.  You 
get what you want out of your packages and I get help 
maintaining them.  That's the beauty of FOSS!


### References:
- [Solution in Arch Forum](https://bbs.archlinux.org/viewtopic.php?id=191629)
- [Arch Wiki on AUR authentication](https://wiki.archlinux.org/index.php/Arch_User_Repository#Authentication)
- [Arch Wiki on creating new AUR packages](https://wiki.archlinux.org/index.php/Arch_User_Repository#Creating_a_new_package)
