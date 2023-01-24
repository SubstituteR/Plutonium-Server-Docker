#!/bin/sh
./plutonium-updater -d /opt/plutonium #update the server.
cd /opt/plutonium
xvfb-run wine bin/plutonium-bootstrapper-win32.exe "$GAME" /opt/server -dedicated +start_map_rotate +set key "$KEY" +set net_port 4976 +set sv_config "$CONFIG"
