#!/bin/bash

rm -rf /tmp/fish-shell

git clone https://github.com/fish-shell/fish-shell /tmp/fish-shell
cd /tmp/fish-shell

# compile & install
autoreconf --no-recursive #if building from Git
./configure
make
sudo make install

rm -rf /tmp/fish-shell
cd