#!/bin/sh
n=$(checkupdates | wc -l)
if [ "$n" != "0" ]; then
    notify-send "Actualización del Sistema" "$n Actualizaciones disponibles"
fi
