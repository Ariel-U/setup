#!/bin/sh
# para calcular los valores de <--newmode> ejecutar el comando <cvt> como en el ejemplo:
# cvt [ancho] [alto] [frecuencia]
# cvt 1600 1200 60

xrandr --newmode 1600x1200_60.00  161.00  1600 1712 1880 2160  1200 1203 1207 1245 -hsync +vsync
xrandr --addmode VGA-0 1600x1200_60.00
xrandr -s 1600x1200
