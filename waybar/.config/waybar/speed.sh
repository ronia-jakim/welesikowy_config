#!/usr/bin/env bash

cachefile="$HOME/.cache/myspeed"

if [[ -f "$cachefile" ]];
then 
  cat "$cachefile"
else
  echo "dupa"
fi

