WALLPAPER_DIR="$HOME/Pictures/wallpapers"


for file in "$WALLPAPER_DIR"/*; do
    # Only handle files (skip directories)
    if [ -f "$file" ]; then
        echo "$file"
        hyprctl hyprpaper preload $file
    fi
done

while true; do
    # Wait 10 minutes
    sleep 5
    
    # Pick a random wallpaper
    wallpaper=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

    # Apply it to every monitor
    for monitor in $(hyprctl monitors -j | jq -r '.[].name'); do
        hyprctl hyprpaper wallpaper "$monitor, $wallpaper"
    done

done


# while true
# do
#   wallpaper=$(ls ~/Pictures/wallpapers | shuf -n 1)
#
#   swaybg -i ~/Pictures/wallpapers/$wallpaper -m fill
#
#   sleep 10s
#
#   pkill swaybg
# done
