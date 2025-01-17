#!/bin/bash

# Start gamemode
notify-send "Starting gamemoded."
gamemoded -r &
sleep 0.5

notify-send "Proceeding to start the game..."
# Run the Steam game
"$@"

# When the game exits, stop gamemode
notify-send "Stopping gamemoded."
killall gamemoded
