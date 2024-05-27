#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

# Change the volume using alsa(might differ if you use pulseaudio)
#amixer -c 0 set Master "$@" > /dev/null

# Query amixer for the current volume and whether or not the speaker is muted
volume="$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
)"
mute="$(pacmd list-sinks | awk '/muted/ { print $2 }')"
if [[ $volume == 0 || "$mute" == "yes" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Głucho wszędzie" 
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$volume" "Dzwony dzwonią w ${volume}%"
fi

# Play the volume changed sound
#canberra-gtk-play -i audio-volume-change -d "changeVolume"
