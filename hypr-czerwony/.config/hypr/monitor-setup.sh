#!/bin/bash

isHDMI=$(hyprctl monitors | grep -i HDMI)
isEDP1=$(hyprctl monitors | grep -i eDP-1)
isEDP2=$(hyprctl monitors | grep -i eDP-2)

if [ -z "$isHDMI" ]
then
  # HDMI is not plugged in
  if [ -z "$isEDP1" ] # edp1 is also not working today
  then 
    hyprctl keyword monitor eDP-2, 2880x1800, 0x0, 1.25
  else
    hyprctl keyword monitor eDP-1, 2880x1800, 0x0, 1.25
  fi
else 
  whatHDMI=$(hyprctl monitors | grep -i HDMI | awk '{print $2}')
  hyprctl keyword monitors $whatHDMI, 2560x1440, 0x0, 1
  
  if [ -z "$isEDP1" ] # edp1 is also not working today
  then 
    hyprctl keyword monitor eDP-2, 2880x1800, 2560x0, 1.25
  else
    hyprctl keyword monitor eDP-1, 2880x1800, 2560x0, 1.25
  fi
fi

