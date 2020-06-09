#!/bin/sh

# xinitrc runs automatically when you run startx.
dwmbar &
xset r rate 300 50 &
picom &
wallpaper ~/wallpapers
mountd & 
sxhkd -c ~/.config/sxhkd/dwm/sxhkdrc &
exec dwm 

