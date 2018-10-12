#!/bin/bash

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo echo "deb https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list
sudo apt install -y apt-transport-https
sudo apt update -y
sudo apt install -y sublime-text

echo "################################################################"
echo "################      sublime text installed    ################"
echo "################################################################"


