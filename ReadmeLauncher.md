Launcher ersetzen.

Entwickler Optionen und ADB debug einschalten.

Alternativen Launcher über Sideload installieren.

Telekom Launcher und Updater ausschalten:

# adb connect ip
# adb shell
# pm disable-user --user 0 de.telekom.magentatv.androidtv
# pm disable-user --user 0 de.telekom.magentatv.androidtv.updater
# reboot


Magenta TV initial Setup durchführen Magenta Login z.b. mit Telekom Forum Login.


Updates und Launcher wieder einschalten:

# pm list packages -d
# pm enable de.telekom.magentatv.androidtv.updater
# pm enable de.telekom.magentatv.androidtv
