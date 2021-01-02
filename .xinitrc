#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto
./.screenlayout/main.sh 
udiskie &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec dbus-launch --exit-with-session --sh-syntax i3
exec pcmanfm
exec rclone mount dropboxmain://  ~/dropbox &
