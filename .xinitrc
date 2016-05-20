#!/bin/sh

xrdb -load ~/.Xresources &
feh --bg-scale wm/wall/2.png &

exec i3
