#!/bin/sh

#Setup
FUENTE="/home/ariel/"
LOCAL="/mnt/juegos/home-backup/"

# crea una copia en $DESTINO para sincrionizar en la nube
rsync -aAXv --delete --exclude={".cache",".local",".moziila"} --exclude="Descargas" $FUENTE $LOCAL

echo "Se copió <$FUENTE> en <$LOCAL>"


########## EXPERIMENTAL ##########3

# borra archivos más viejos que x días
# rm -rf $(find $DESTINO  -maxdepth 1  -type d ! -newermt "3 days ago")
