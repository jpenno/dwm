#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "dex $HOME/.config/autostart/arcolinux-welcome-app.desktop"
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto

#xrandr --output DP-0 --primary --mode 1920x1080 --rate 144.00 --output DVI-D-0 --mode 1920x1080 --rate 144.00 &
xrandr --output DP-0 --primary --mode 2560x1440 --rate 165.00 --output HDMI-0 --left-of DP-0 --mode 1920x1080 --rate 60.00 &

run fcitx -d &
run "nm-applet"
run "pamac-tray"
run "variety"
run "xfce4-power-manager"
run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/dwm/dwm/picom.conf &
run "numlockx on"
run "volumeicon"
#run slstatus &
run dwmblocks &
sxhkd -c ~/.config/dwm/dwm/sxhkd/sxhkdrc &
#run "nitrogen --restore"
#run "conky -c $HOME/.config/dwm/dwm/system-overview"
#you can set wallpapers in themes as well
#feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
feh --bg-fill -z ~/.config/dwm/Backgrounds/
#run applications from startup

# auto start ibus for jp input
ibus-daemon -drxR

#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"


# My bar config
#xsetroot -name "$(date)"









