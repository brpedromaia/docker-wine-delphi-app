#!/bin/bash

echo "[$wname]: Starting."
/usr/bin/Xvfb $DISPLAY -screen 0 800x600x16 &
sleep 2
openbox-session &
sleep 3
winetricks corefonts 
winetricks mdac27 wsh57 jet40 msxml3 msxml4 msxml6 mdac28 winhttp winhttp &

# WID=`xdotool search "Wine Mono Installer"`
# while [ "$WID" == "" ];do
#   echo "Wating for Wine Mono Installer"
#   sleep 2
#   WID=`xdotool search "Wine Mono Installer"`
# done
# xdotool windowactivate --sync $WID
# xdotool key --clearmodifiers alt+I

WID=`xdotool search "Microsoft Data Access Components 2.7 Setup"`
while [ "$WID" == "" ];do
  echo "Wating for Microsoft Data Access Components 2.7 Setup"
  sleep 2
  WID=`xdotool search "Microsoft Data Access Components 2.7 Setup"`
done
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers space
xdotool key --clearmodifiers alt+N
xdotool getactivewindow windowminimize
sleep 15
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers Tab
xdotool key --clearmodifiers space
xdotool getactivewindow windowminimize
sleep 20
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers space

WID=`xdotool search "Jet 4.0 Service Pack 8"`
while [ "$WID" == "" ];do
  echo "Wating for Jet 4.0 Service Pack 8"
  sleep 2
  WID=`xdotool search "Jet 4.0 Service Pack 8"`
done
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers alt+Y

WID=`xdotool search "MSXML 4.0 SP3 Parser Setup"`
while [ "$WID" == "" ];do
  echo "Wating for MSXML 4.0 SP3 Parser Setup"
  sleep 2
  WID=`xdotool search "MSXML 4.0 SP3 Parser Setup"`
done
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers space
sleep 1
xdotool key --clearmodifiers space
xdotool key --clearmodifiers alt+N
sleep 1
xdotool key --clearmodifiers alt+N
sleep 1
xdotool key --clearmodifiers space
sleep 5
xdotool key --clearmodifiers space


WID=`xdotool search "Microsoft Data Access Components 2.8 SP1 Setup"`
while [ "$WID" == "" ];do
  echo "Wating for Microsoft Data Access Components 2.8 SP1 Setup"
  sleep 2
  WID=`xdotool search "Microsoft Data Access Components 2.8 SP1 Setup"`
done
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers space
xdotool key --clearmodifiers alt+N
xdotool getactivewindow windowminimize
sleep 10
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers Tab
xdotool key --clearmodifiers space
xdotool getactivewindow windowminimize
sleep 10
xdotool windowactivate --sync $WID
xdotool key --clearmodifiers space

killall xvfb