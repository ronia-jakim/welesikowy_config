#!/usr/bin/env bash

choice=$(printf "NO\nYES" | rofi \
    -dmenu \
    -config /dev/null \
    -theme ~/.config/hypr/rofi-exit.rasi \
    -p "Exit Hyprland?")

if [[ "$choice" == "YES" ]]; then
    hyprctl dispatch exit
fi
