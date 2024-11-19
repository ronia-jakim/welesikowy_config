#!/usr/bin/bash

let theme=$(~/welesikowy_config/scripts/light-or-dark.sh)

if [[ $theme == *"light"* ]];
then 
  gsettings set org.gnome.desktop.interface gtk-theme "Everforest-Light"
  gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
else
  gsettings set org.gnome.desktop.interface gtk-theme "Everforest-Dark"
  gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi
