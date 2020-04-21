#!/bin/env bash
# if Xorg not runnig this script will make some problem to your session, so:
if pgrep -x Xorg >/dev/null
then
    STAT=$1
    COM="enable"
    MESS="enabled"
    DISPLAY=:0
    XAUTHORITY=/run/user/1000/Xauthority
    DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

    export DISPLAY XAUTHORITY DBUS_SESSION_BUS_ADDRESS

    ID=`xinput list | grep -Eio 'touchpad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
    [ "$STAT" == "connected" ] && COM="disable" && MESS="disabled"

    su led -c "notify-send  'Mouse $STAT' 'Touchpad will be $MESS'"
    xinput $COM $ID
fi
