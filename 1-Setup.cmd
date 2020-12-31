@echo off
color 0a


cls

echo.
echo Magenta Stick anpassen
echo.
pause

adb push Wallpaper.jpg /sdcard/Wallpaper.jpg
adb install -r Filemanager.apk
adb install -r Mizuu.apk
adb install -r VLC-3.3.3.apk
adb install -r ca.dstudio.atvlauncher.apk
adb shell "appwidget grantbind --package ca.dstudio.atvlauncher.pro"

adb shell "pm disable-user --user 0 de.telekom.magentatv.androidtv.updater"
wait.exe 5
adb shell "pm disable-user --user 0 de.telekom.magentatv.androidtv"
wait.exe 5

adb shell "pm disable-user --user 0 com.google.android.leanbacklauncher.recommendations"
adb shell "pm disable-user --user 0 com.google.android.leanbacklauncher"

adb shell "pm disable-user  --user 0 com.android.printspooler"
adb shell "pm disable-user  --user 0 com.android.providers.calendar"
adb shell "pm disable-user  --user 0 com.android.providers.contacts"

adb shell "pm disable-user  --user 0 com.google.android.play.games"
adb shell "pm disable-user  --user 0 com.google.android.syncadapters.calendar"
adb shell "pm disable-user  --user 0 com.google.android.syncadapters.contacts"
adb shell "pm disable-user  --user 0 com.google.android.tts"

adb shell "pm disable-user  --user 0 com.google.android.tv.bugreportsender"
adb shell "pm disable-user  --user 0 com.google.android.tv.remote.service"
adb shell "pm disable-user  --user 0 com.google.android.youtube.tvmusic"
adb shell "pm disable-user  --user 0 com.google.android.videos"
adb shell "pm disable-user  --user 0 com.google.android.marvin.talkback"

adb shell "pm disable-user  --user 0 com.google.android.tvrecommendations"
adb shell "pm disable-user  --user 0 com.google.android.apps.mediashell"
adb shell "pm disable-user  --user 0 com.example.adapterkeyboard"
adb shell "pm disable-user  --user 0 com.google.android.syncadapters.contacts"
adb shell "pm disable-user  --user 0 com.google.android.syncadapters.calendar"

pause
echo.
echo done
wait.exe 5
echo.
pause
adb shell reboot