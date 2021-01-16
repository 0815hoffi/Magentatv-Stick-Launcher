Write CE-Image with Etcher or Rufus to USB Stick. 
Open DTB Folder on Stick an copy S905y2-Datei (2g) to Root folder and rename to dtb.img
Connect Stick to OTG Cable.

run

# adb shell reboot update

Stick is now booting Coreelec.

Install EMMC
# ceemmc -x



Fernbedienung Buttons:

FIX OK Button.
First, create /etc/udev/hwdb.d/99-MTV.hwdb file and fill with:
vi /storage/.config/hwdb.d/99-MTV.hwdb


Very Important you must insert space before KEYBOARD_KEY

-----------------------------------------------------------
evdev:input:b0005v0417p0033*
keyboard:usb:b0005v0417p0033*
 KEYBOARD_KEY_c0041=enter
-----------------------------------------------------------

or use my 99-MTV.hwdb


#restart hwdb and reboot system:

#udevadm hwdb --update

#systemd-hwdb update

#udevadm trigger

#udevadm control --reload

#reboot
