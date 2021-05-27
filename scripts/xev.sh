#!/bin/sh
# usa zev para mostrar la tecla pulsada y su numkey
xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'  
