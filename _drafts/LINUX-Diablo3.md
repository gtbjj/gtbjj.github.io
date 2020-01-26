---
layout: post
title: "Diablo 3 on Arch Linux"
excerpt: "Installing and playing Diablo 3 on Arch Linux without third party gaming apps (PlayOnLinux, Lutris, etc...)
category: Linux
tags:
comments: true
---

required packages:
```
wine-staging
winetricks
lib32-gnutls
lib32-libldap
------------------
$ sudo pacman -S wine-staging winetricks lib32-gnutls lib32-libldap
```

run winetricks:
```
$ winetricks vcrun6 corefonts
```

Download battle.net desktop package from Blizard
```
$ mkdir ~/games
$ cd ~/games
-------------


Download desktop app from Blizzard:
https://www.battle.net/download/getInstallerForGame?os=win&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP
```

create shell alias:
```
$ nano .zshrc
--------------
alias diablo="WINEPREFIX=$HOME/games/diablo3 WINEPREFIX=win32 wine $HOME/games/diablo-app.exe -launch"
--------------
save and exit, then

$ source ~/.zshrc
$ diablo
```

Finally:
```
- install battle.net
- log in to battle.net
- install diablo 3 content
- play :-D
```





#### References

- https://forum.winehq.org/viewtopic.php?t=32399
- https://wiki.winehq.org/Winetricks