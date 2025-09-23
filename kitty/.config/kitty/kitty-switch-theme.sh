theme=$(~/welesikowy_config/scripts/light-or-dark.sh)

if [[ $theme == *"light"* ]];
then
  echo "include ~/.config/kitty/everforest_light.conf" > ~/.config/kitty/kitty.conf

else
  echo "include ~/.config/kitty/everforest_dark.conf" > ~/.config/kitty/kitty.conf
fi
