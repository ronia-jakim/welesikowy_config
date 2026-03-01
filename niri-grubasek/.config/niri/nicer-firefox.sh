if ps aux | grep -F '/run/current-system/sw/bin/firefox' | grep -v grep > /dev/null ; then
    echo "jest firefox"
    firefox & 
else
    echo "nie ma liska"
    firefox & 
    sleep 1
    FIREFOX_WIN_ID=$( niri msg windows | awk '
      /^Window ID [0-9]+:/ {
        win_id = $3;  # third field is the ID with colon
        sub(":", "", win_id);  # remove trailing colon
      }
      /App ID:/ {
        app_id = $3;  # third field is the App ID in quotes
        gsub("\"", "", app_id);  # remove quotes
        print win_id, app_id;
      }
    ' | grep firefox )
    NUM=$(echo "$FIREFOX_WIN_ID" | cut -d' ' -f1)
    niri msg action maximize-window-to-edges --id $NUM
fi
