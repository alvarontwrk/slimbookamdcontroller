#!/bin/sh

# Void deploy script

if [ "$EUID" != 0 ]; then
    echo "Script must be run as root"
    exit
fi

xbps-install RyzenAdj

