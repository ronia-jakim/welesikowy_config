#
#
dupa="$( cat /sys/class/backlight/amdgpu_bl1/brightness )"
procenty=$(( $(( dupa * 100  )) / 255 ))

barrier=20

msgTag="mylight"

if [[ $procenty -lt $barrier ]]
then
  dunstify -a "changeBrightness" -u low -i brightness-low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$procenty" "Ciemno wszędzie, głucho wszędzie"
else
  dunstify -a "changeBrightness" -u low -i brightness-high -h string:x-dunst-stack-tag:$msgTag -h int:value:"$procenty" "Weź że zgaś to gówno"
fi
