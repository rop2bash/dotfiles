#!/bin/bash

sudo gpg --keyserver hkp://keyserver.ubuntu.com --search-key 'Spotify Public Repository Signing Key'
sudo echo deb http://repository.spotify.com stable non-free > /etc/apt/sources.list.d/spotify.list
sudo apt update -y
sudo apt install -y spotify-client

echo "################################################################"
echo "###################   spotify installed   ######################"
echo "################################################################"
