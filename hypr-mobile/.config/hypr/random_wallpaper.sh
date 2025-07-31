wallpaper=$(ls ~/Pictures/wallpapers | shuf -n 1)

echo $wallpaper

swaybg -i ~/Pictures/wallpapers/$wallpaper -m fill
