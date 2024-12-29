#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Chrome & Cursor
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🚀

if [[ "$(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true')" == "Google Chrome" ]]; then
  open -a "Cursor"
else
  open -a "Google Chrome"
fi