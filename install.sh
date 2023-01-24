#!/bin/bash
apt-get update

echo "Enabling i386 for 32-bit packages"

dpkg --add-architecture i386 && \
apt-get update -y && \
apt-get install wget gnupg2 software-properties-common apt-transport-https curl xvfb -y

echo "Installing Wine"
wget -nc https://dl.winehq.org/wine-builds/winehq.key
apt-key add winehq.key && \
apt-add-repository 'deb https://dl.winehq.org/wine-builds/debian/ bullseye main'
rm winehq.key
apt update -y
apt install --install-recommends winehq-stable -y

# Add Variables to the environment at the end of ~/.bashrc
echo -e 'export WINEPREFIX=~/.wine\nexport WINEDEBUG=fixme-all\nexport WINEARCH=win64' >> ~/.bashrc
echo -e 'export DISPLAY=:0' >> ~/.bashrc
source ~/.bashrc
winecfg

echo "Downloading Plutonium Updater"
wget https://github.com/mxve/plutonium-updater.rs/releases/latest/download/plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
tar xfv plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
rm plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
chmod +x plutonium-updater

echo "Installed"
