#!/bin/sh
# Agrega las resoluciones de pantalla que le faltan a mi monitor. Funciona solo en X11.
# Para calcular los valores de <--newmode> ejecutar el comando <cvt> como en el ejemplo:
# cvt [ancho] [alto] [frecuencia]
# ej: cvt 1920 1200 60

# agregar las resoluciones 16:10 más comunes
xrandr --newmode 1920x1200_60.00  193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync
xrandr --newmode 1680x1050_60.00  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
xrandr --newmode 1440x900_60.00  106.50  1440 1528 1672 1904  900 903 909 934 -hsync +vsync
xrandr --newmode 1280x800_60.00   83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync

# pasar las resoluciones al output HDMI-0 y VGA-0
xrandr --addmode HDMI-0 1920x1200_60.00
xrandr --addmode HDMI-0 1680x1050_60.00
xrandr --addmode HDMI-0 1440x900_60.00
xrandr --addmode HDMI-0 1280x800_60.00
#xrandr --addmode VGA-0 1920x1200_60.00
#xrandr --addmode VGA-0 1680x1050_60.00
#xrandr --addmode VGA-0 1440x900_60.00
#xrandr --addmode VGA-0 1280x800_60.00

xrandr -s 1680x1050_60
