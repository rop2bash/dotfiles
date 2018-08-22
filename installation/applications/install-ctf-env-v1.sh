#!/bin/bash

echo "###################################################"
echo "##############     Installing CTF env     #################"
echo "###################################################"

### Virual Environmets
sudo apt install -y python-dev python-pip libffi-dev build-essential virtualenvwrapper

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
rm -rf /tmp/ReFirmLabs

git clone https://github.com/ReFirmLabs/binwalk /tmp/ReFirmLabs
cd /tmp/ReFirmLabs

sudo apt install -y python-lzma
sudo python setup.py install

cd

sudo rm -rf /tmp/ReFirmLabs

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
sudo apt install -y radare2

### one_gadget
sudo gem install one_gadget

### zsteg
sudo gem install zsteg