


zath() {
  # config paths
  declare -r zathura_light="~/.config/zathura/light"
  declare -r zathura_dark="~/.config/zathura/dark"


  local theme=$(~/welesikowy_config/scripts/light-or-dark.sh)

  
  if [[ $theme == *"light"* ]];
  then
    zathura --config-dir=$zathura_light $@
  else
    zathura --config-dir=$zathura_dark $@
  fi

}

alias zathura=zath

