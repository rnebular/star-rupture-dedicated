#!/usr/bin/env bash

set -e

sudo apt install -y xvfb wine ntlm_auth

# install steamcmd and star rupture server
/usr/games/steamcmd +@sSteamCmdForcePlatformType windows +force_install_dir '/home/steam/SR-Server' +login anonymous +app_update 3809400 validate +quit

# setup wine service
xvfb-run wine StarRupture/Binaries/Win64/StarRuptureServerEOS-Win64-Shipping.exe -Log -port=7777 -multihome=192.168.1.20

