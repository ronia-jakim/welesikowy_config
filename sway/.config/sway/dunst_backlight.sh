#
#
dupa="$( cat /sys/class/backlight/amdgpu_bl1/brightness )"
procenty=$(( $(( dupa * 100  )) / 255 ))

barrier=20
srodek=60

msgTag="mylight"

if [[ $procenty -lt $barrier ]]
then
  dunstify -a "changeBrightness" -u low -i brightness-low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$procenty" "Ciemno wszędzie"
elif [[ $procenty -lt $srodek ]] 
then
  dunstify -a "changeBrightness" -u low -i brightness-high -h string:x-dunst-stack-tag:$msgTag -h int:value:"$procenty" "Niechaj się stanie światłość!"
else
  dunstify -a "changeBrightness" -u low -i brightness-high -h string:x-dunst-stack-tag:$msgTag -h int:value:"$procenty" "I stała się światłość"
fi
