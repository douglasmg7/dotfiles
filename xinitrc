#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Status bar.
while true
do
  BATTERY=$(acpi -i | head -1 | cut -f2 -d,)
  LOCALTIME=$(date "+%H:%M")
  WIFI=$(iw dev wlo1 link | grep SSID | cut -c8-)
  xsetroot -name " $BATTERY - $WIFI - $LOCALTIME"
  sleep 20s
done &
# Right alt to accentuation.
# setxkbmap -option compose:ralt &
# No composition ralt.
# setxkbmap -model abnt2 -layout br -option &
# setxkbmap -model pc105 -layout br -option &
# st &
# chromium &
st -e tmux &
exec dwm
