theme=$(~/welesikowy_config/scripts/light-or-dark.sh)

echo $theme

if [[ $theme == *"light"* ]];
then 
  echo "light theme activated"
  gsettings set org.gnome.desktop.interface gtk-theme "Everforest-Light"
  gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
else
  echo "dark theme activated"
  gsettings set org.gnome.desktop.interface gtk-theme "Everforest-Dark"
  gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi
