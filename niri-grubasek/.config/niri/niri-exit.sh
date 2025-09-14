#!/usr/bin/env bash

choice=$(printf "NO\nYES" | rofi \
    -dmenu \
    -config /dev/null \
    -theme ~/.config/niri/niri-exit.rasi \
    -p "Exit Niri?")

if [[ "$choice" == "YES" ]]; then
  niri msg action quit -s
fi
