#!/bin/sh

# Void deploy script

if [ "$USER" != "root" ]; then

    echo "Script must be run as root"
    exit
fi

xbps-install -y RyzenAdj

print_info "Copying contents..."
while read line; do
	cp -vrf $line
done < debian/install
print_info "...Done copying contents!\n"