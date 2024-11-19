


declare -r zathura_light="~/.config/zathura/light/zathurarc"
declare -r zathura_dark="~/.config/zathura/dark/zathurarc"


local theme=$(~/welesikowy_config/scripts/light-or-dark.sh)


if [[ $theme == *"light"* ]];
then
  cp $(zathura_light) ~/.config/zathura/
else
  cp $(zathura_dark) ~/.config/zathura/
fi
