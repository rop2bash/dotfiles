#!/bin/bash

rm /tmp/atom-amd64.deb

wget https://atom.io/download/deb -O /tmp/atom-amd64.deb
sudo dpkg -i /tmp/atom-amd64.deb

rm /tmp/atom-amd64.deb
