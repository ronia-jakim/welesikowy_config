


zathura_light="~/.config/zathura/light/zathurarc"
zathura_dark="~/.config/zathura/dark/zathurarc"


theme=$(~/welesikowy_config/scripts/light-or-dark.sh)


if [[ $theme == *"light"* ]];
then
  cp ~/.config/zathura/light/zathurarc ~/.config/zathura/zathurarc

else
  cp ~/.config/zathura/dark/zathurarc ~/.config/zathura/zathurarc
fi
