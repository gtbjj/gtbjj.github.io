---
layout: post
title: "X205TA: Freezing after Suspend Resume"
excerpt: "Workaround for freezing after resume from lid close/suspend"
category:
- Linux
tags:
- arch
- linux
- x205ta
- troubleshooting
- systemd
- suspend
- laptop
- freeze
comments: true
---

After discovering that someone has started and [Arch Forum thread for this machine](https://bbs.archlinux.org/viewtopic.php?id=211400), I was prompted with this issue.  I use keyboard shortcuts to suspend and lock this laptop alreay.  I usually just hit the hotkey(s), close the lid, and never think twice about it (the solution I'm suggesting here).

However, if you were to close the lid (triggering suspend) and open it (triggering resume), you'll find that the machine will randomly suspend itself again.  You can click to resume, but eventually the system will freeze; requiring a hard reboot.

A possible workaround is to disable systemd's control over the lid and manually use a keyboard shortcut to run a given suspend / lock command prior to closing the lid.

1) Disable *systemd*'s control over actions-on-lid-close:

```
# nano /etc/systemd/logind.conf
----------------------------------------------
[Login]
#NAutoVTs=6
#ReserveVT=6
#KillUserProcesses=no
#KillOnlyUsers=
#KillExcludeUsers=root
#InhibitDelayMaxSec=5
#HandlePowerKey=poweroff
#HandleSuspendKey=suspend
#HandleHibernateKey=hibernate
HandleLidSwitch=ignore          #suspend
#HandleLidSwitchDocked=ignore
#PowerKeyIgnoreInhibited=no
#SuspendKeyIgnoreInhibited=no
#HibernateKeyIgnoreInhibited=no
#LidSwitchIgnoreInhibited=yes
#HoldoffTimeoutSec=30s
#IdleAction=ignore
#IdleActionSec=30min
#RuntimeDirectorySize=10%
#RemoveIPC=yes
#InhibitorsMax=8192
#SessionsMax=8192
#UserTasksMax=12288
```

2) Restart the service

```# systemctl restart systemd-login```

3)  Configure your DE / WM to map whatever key combination you'd like to:

```systemctl suspend```

-----

See also, the ongoing discussion in [related issue thread on GitHub](https://github.com/gtbjj/x205ta/issues/8)