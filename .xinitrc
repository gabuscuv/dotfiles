#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
./.screenlayout/main.sh 
udiskie &
[[ -f "$XDG_CONFIG_HOME/X11/xresources" ]] && xrdb -merge -I "$XDG_CONFIG_HOME/X11/xresources"
#/usr/bin/gentoo-pipewire-launcher
# Here KDE is kept as default
session=${1:-kde}

case $session in
    i3|i3wm           ) exec dbus-launch --exit-with-session i3;;
    kde               ) exec dbus-launch --exit-with-session startplasma-x11;;
    # No known session, try to run it as command
    *                 ) exec dbus-launch --exit-with-session $1;;
esac
#exec dbus-launch --exit-with-session --sh-syntax i3
#exec dbus-launch --exit-with-session startplasma-x11
#exec pcmanfm
#exec rclone mount dropboxmain://  ~/dropbox &
