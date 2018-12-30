#!/bin/bash

echo "###################################################"
echo "##############     Installing CTF env     #################"
echo "###################################################"

### Virual Environmets
pip3 install setuptools
pip install setuptools
pip install virtualfish

### Angr on virtualenv
#fish -c "vf new angr; pip install angr; deactivate; exit"

## Pwntools on virtualenv
#fish -c "vf new pwn; pip install pwntools; deactivate; exit"

### Capstone
rm -rf /tmp/aquynh

git clone https://github.com/aquynh/capstone /tmp/aquynh
cd /tmp/aquynh

./make.sh
sudo ./make.sh install
cd bindings/python
sudo make install

cd

sudo rm -rf /tmp/aquynh

### Binwalk
sudo dnf install -y binwalk

### Z3 solver
rm -rf /tmp/Z3Prover

git clone https://github.com/Z3Prover/z3 /tmp/Z3Prover
cd /tmp/Z3Prover

python scripts/mk_make.py --python
cd build
make -j8
sudo make install

cd

sudo rm -rf /tmp/Z3Prover

### Radare2
sudo dnf install -y radare2

### one_gadget
sudo gem install one_gadget

### zsteg
sudo gem install zsteg
