#!/bin/sh

# Void deploy script

if [ "$USER" != "root" ]; then

    echo "Script must be run as root"
    exit
fi

xbps-install RyzenAdj

