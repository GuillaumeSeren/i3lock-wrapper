#!/bin/bash
# ---------------------------------------------
# @author Guillaume Seren
# source  https://github.com/GuillaumeSeren/i3lock-wrapper
# Licence GPLv3
# Since   04/06/2015
#
# This script wrap-up my pre/post setup around i3lock.
# ---------------------------------------------
# PRE lock scripting:
# Mute sound
pactl set-sink-mute @DEFAULT_SINK@ true

# Launch i3lock fork
i3lock -n -d -e -f -c 000000 &

wait

# POST lock scripting :
xset -dpms && xset s off

# Needed by systemd
exit 0
