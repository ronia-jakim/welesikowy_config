#!/bin/bash

killall waybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

waybar
