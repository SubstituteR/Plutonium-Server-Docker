#!/bin/sh
pkill Xvfb #kill any hung servers.
./plutonium-updater -d /opt/plutonium #update the server.
cd /opt/plutonium
xvfb-run -a wine bin/plutonium-bootstrapper-win32.exe "$GAME" /opt/server -dedicated +start_map_rotate +set key "$KEY" +set net_port "$PORT" +set sv_config "$CONFIG"
