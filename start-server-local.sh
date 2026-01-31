#!/usr/bin/env bash

set -e
echo "Updating Star Rapture Dedicated Server..."

/usr/games/steamcmd +@sSteamCmdForcePlatformType windows +force_install_dir '/home/steam/SR-Server' +login anonymous +app_update 3809400 validate +quit
