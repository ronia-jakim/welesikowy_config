#!/usr/bin/env bash

cachefile="$HOME/.cache/myspeed"

if [[ -f "$cachefile" ]];
then 
  cat "$cachefile"
else
  echo "dupa"
fi

if [[ ! -f "$cachefile" ]] || [[ $(find "$cachefile" -mmin +10 2>/dev/null) ]]; then
    (
        testresult=$(speedtest-cli --secure)
        download=$(awk '/Download:/ {print $2}' <<< "$testresult")
        upload=$(awk '/Upload:/ {print $2}' <<< "$testresult")

        echo "$download | $upload  " > "$cachefile"
    ) &
fi
