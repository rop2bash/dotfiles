#!/bin/bash

sudo apt install -y python-dev python-pip libffi-dev build-essential virtualenvwrapper

pip install virtualfish

cp ../.config/fish ~/.config/


rm -rf /tmp/aquynh

git clone https://github.com/aquynh/capstone /tmp/aquynh
cd /tmp/aquynh

# compile & install
./make.sh
sudo ./make.sh install

rm -rf /tmp/aquynh
