#!/usr/bin/env bash
if [ $# -ne 0 ];then
    echo "I have no parameters just run the script without arguments"
    exit 1
fi

notify-send "Photoshop CC" "Photoshop CC launched." -i "photoshopicon"

SCR_PATH="pspath"
CACHE_PATH="pscache"

RESOURCES_PATH="$SCR_PATH/resources"
WINE_PREFIX="$SCR_PATH/prefix"
 

export WINEPREFIX="$WINE_PREFIX"
distro=$(grep '^ID=' /etc/os-release | cut -d'=' -f2 | tr -d '"')

if [ "$distro" != "arch" ]; then
    wine64 "$SCR_PATH/prefix/drive_c/users/$USER/PhotoshopSE/Photoshop.exe"
else
    wine "$SCR_PATH/prefix/drive_c/users/$USER/PhotoshopSE/Photoshop.exe"
fi
