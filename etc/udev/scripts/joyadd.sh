#!/bin/bash

STAT=$1
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
export DBUS_SESSION_BUS_ADDRESS
xset -dpms
xset s off
su led -c "notify-send  'System Message' 'Xbox Gamepad $STAT connected'"
