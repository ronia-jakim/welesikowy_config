#!/usr/bin/env bash

cachefile="$HOME/.cache/myspeed"

testresult=$(speedtest-cli --secure)
download=$(awk '/Download:/ {print $2}' <<< "$testresult")
upload=$(awk '/Upload:/ {print $2}' <<< "$testresult")

echo "$download | $upload  " > "$cachefile"
