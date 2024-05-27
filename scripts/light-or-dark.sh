#!/usr/bin/env bash


light-or-dark() {

  # sun connected times
  # Set your local latitude and longitude for sun calculations
  # LUBLYN
  declare -r latitude="51.201730N"
  declare -r longitude="22.660670E"

  # Use sunwait to calculate sunrise/sunset times
  local get_sunrise=$(sunwait list civil rise $latitude $longitude);
  local get_sunset=$(sunwait list civil set $latitude $longitude);

  # Use human-readable relative time for offset adjustments
  local sunrise=$(date -d "$get_sunrise" +"%s");
  local sunriseMid=$(date -d "$get_sunrise 15 minutes" +"%s");
  local sunriseLate=$(date -d "$get_sunrise 30 minutes" +"%s");
  local dayLight=$(date -d "$get_sunrise 90 minutes" +"%s");
  local twilightEarly=$(date -d "$get_sunset 90 minutes ago" +"%s");
  local twilightMid=$(date -d "$get_sunset 30 minutes ago" +"%s");
  local twilightLate=$(date -d "$get_sunset 15 minutes ago" +"%s");
  local sunset=$(date -d "$get_sunset" +"%s");

  local currenttime=$(date +%s)


  
  if [ "$currenttime" -ge "$sunrise" ] && [ "$currenttime" -lt "$twilightEarly" ];
  then
    echo "light"
  else
    echo "dark"
  fi


  # local beginLight = $(date -d 'today 13:00:00' "+%s")
  # local endLight = $(date -d 'today 13:00:00' "+%s")
  # local
  # if [ "$currenttime" -ge "$beginLight" ] && [ "$currenttime" -lt "$endLight" ];
  # then
  #   echo "light"
  # else
  #   echo "dark"
  # fi
}

echo $(light-or-dark)
