#!/bin/sh

# Void deploy script

if [ "$USER" != "root" ]; then

    echo "Script must be run as root"
    exit
fi

xbps-install -y RyzenAdj

mkdir -p /usr/share/slimbookamdcontroller/src

echo "Copying contents..."
while read line; do
	cp -vrf $line
done < debian/install
echo "...Done copying contents!\n"