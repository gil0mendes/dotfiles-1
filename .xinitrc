#!/bin/sh

# xinitrc runs automatically when you run startx.
mountd & 
dwmbar &
xset r rate 300 50 &
picom &
wallpaper ~/wallpapers
sxhkd -c ~/.config/sxhkd/dwm/sxhkdrc &
export _JAVA_AWT_WM_NONREPARENTING=1 # to make android studio work
exec dwm 


