while true
do
  wallpaper=$(ls ~/Pictures/wallpapers | shuf -n 1)

  swaybg -i ~/Pictures/wallpapers/$wallpaper -m fill
  
  sleep 10m
done
