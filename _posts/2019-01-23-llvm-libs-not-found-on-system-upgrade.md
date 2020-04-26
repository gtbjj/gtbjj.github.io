---
title: LLVM libs not Found on System Upgrade
author: Austin
date: 2019-01-23
categories: [Linux, Misc]
tags: [linux, arch, troubleshoot, llvm, pacman, upgrade]
---

Upon ugrading (```pacman -Syu```) the other day in Arch Linux, I got the following error.

```
austin @T530 ~  sudo pacman -Syu
[sudo] password for austin: 
:: Synchronizing package databases...
 core is up to date
 extra is up to date
 community is up to date
 multilib is up to date
 testing is up to date
 community-testing is up to date
 multilib-testing is up to date
:: Starting full system upgrade...
resolving dependencies...
looking for conflicting packages...
error: could not open file /var/lib/pacman/local/llvm-7.0.1-1/filesor directory
warning: could not fully load metadata for package llvm-7.0.1-1
error: failed to prepare transaction (invalid or corrupted package)
```

There were some proposed solutions from the Arch forums having to do with LOCALE and package keyrings, but none of these solutions worked for me.

I found that the issue was persistent with upgrading any package except for LLVM related packages.  So, I was able to check which packages I had installed related to LLVM by running:

```
$ pacman -Ss | grep llvm | grep installed`
extra/llvm 7.0.1-2 [installed]
extra/llvm-libs 7.0.1-2 [installed]
multilib/lib32-llvm-libs 7.0.1-1 [installed]
``

I went ahead and reinstalled the llvm libraries:

```$ sudo pacman -S llvm-libs libs32-llvm-libs```

That went as expected, but I got the former error when I attempted to reinstall LLVM itself (```$ sudo pacman -S llvm```).

The next logical step was to to uninstall (```$ sudo pacman -Rns llvm```) llvm before manually (re)installing it .

```$ sudo pacman -S llvm``` produced errors stating that various libraries already existed in the filesystem.  This is to be expected as the problem appears related to some, but not all, libraries having been removed somewhere along the line.

Forcing the installation (```$ sudo pacman -S --force llvm```) resolved the issue and I was then able to upgrade (```$ sudo pacman -Syu```) as per usual.
