#!/bin/bash

# repo for spotify
sudo add-apt-repository -y ppa:dawidd0811/neofetch

# getting new info of this new repo
sudo apt-get -y update

# installing
sudo apt install neofetch -y

echo "################################################################"
echo "###################   neofetch installed   #####################"
echo "################################################################"
