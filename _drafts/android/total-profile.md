#### Requirements:

- Android 7.0 or higher (Google Assistant, Pixel Camera)
- SuperSU or kernel with dm-verity disabled (Google Assistant)
- Google app 6.5.35.21 or newer (Google Assistant)

-----

### Tested:

#### Pixel Dialer

apk  link

#### scheduler and cache

```
echo 5120 > /sys/block/mmcblk0/queue/read_ahead_kb
echo noop > /sys/block/mmcblk0/queue/scheduler
```

-----

### Untested

#### Disable Noise Cancelation

*(Should improve call volume, but  may cost quality)*

```
persist.audio.fluence.voicecall=false
```

#### Google Pixel Camera

apk link

#### Google Pixel Launcher

apk link

#### Google Assistant:

*/system/build.prop*

```
ro.product.model=Pixel XL
ro.opa.eligible_device=true
```

-----

#### Notes:

> build.prop needs 644 permissions, adb pull, edit, adb push

> adb app install as system ```$ adb mv /app/data/apk_name.apk /system/app/apk_name.apk``` then reboot

> adb app install as user ```$ adb install -r /path/to/app.apk```


#### References / Resources:

- [Build.prop Edits](http://forum.xda-developers.com/nexus-6p/general/build-prop-mods-t3276163)
- [Google Assistant](http://forum.xda-developers.com/android/software/guide-how-to-enable-google-assistant-t3477879)
- [Pixel Camera](http://www.xda-developers.com/google-camera-v4-2-from-the-pixel-system-dump-is-now-available-for-all-nougat-devices/)
- [Pixel Dialer](http://android.wonderhowto.com/how-to/get-googles-new-pixel-dialer-other-android-devices-0174211/)
- [Pixel Launcher](http://www.androidauthority.com/nexus-launcher-pixel-716094/)
- [Install User App as System App](http://www.androidauthority.com/install-user-app-as-system-app-how-to-93522/)
