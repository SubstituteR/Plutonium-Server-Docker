# Plutonium-Server-Docker
Run the Plutonium dedicated servers in Docker.

Container will update/install plutonium files on start.

You must map the game/zone files into the container for it to work!

## Example running t6mp

```bash
docker run
  -d
  --name='plutonium-t6mp'
  -e 'KEY'='YOUR KEY HERE'
  -e 'CONFIG'='dedicated.cfg'
  -p '4976:4976/udp'
  -v 'PATH TO INSTALL PLUTONIUM SERVER FILES':'/opt/plutonium':'rw'
  -v 'PATH TO GAME/ZONE FILES':'/opt/server':'rw'
  -e GAME="t6mp"
  -e PORT="4976" 'substituter/plutonium-dedicated'
  ```
