#!/bin/sh

# Void deploy script

if [ "$USER" != "root" ]; then

    echo "Script must be run as root"
    exit
fi

xbps-install -y RyzenAdj

echo "Deleting previous installation"
rm -rf /usr/share/slimbookamdcontroller
rm /usr/share/applications/slimbookamdcontroller.desktop
rm -rf /usr/share/icons/hicolor/1024x1024/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/128x128/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/16x16/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/192x192/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/20x20/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/22x22/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/24x24/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/256x256/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/28x28/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/32x32/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/36x36/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/40x40/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/480x480/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/48x48/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/512x512/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/64x64/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/72x72/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/8x8/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/96x96/apps/slimbookamdcontroller.png
rm -rf /usr/share/icons/hicolor/scalable/apps/slimbookamdcontroller.svg
rm -rf /etc/udev/rules.d/81.power.rules
rm -rf /usr/bin/slimbookamdcontroller
rm -rf /usr/bin/slimbookamdcontroller-pkexec
rm -rf /usr/share/polkit-1/actions/com.ubuntu.pkexec.slimbookamdcontroller.policy

mkdir -p /usr/share/slimbookamdcontroller/src

echo "Copying contents..."
while read line; do
	cp -vrf $line
done < debian/install
echo "...Done copying contents!\n"