#!/bin/bash
cd ../../ # Home dir (quantum-np)

# edif2qmasm
git clone https://github.com/lanl/edif2qmasm.git
cd edif2qmasm
make
make install
cd ..
export QMASMPATH=/usr/local/share/edif2qmasm:$QMASMPATH

# qmasm
git clone https://github.com/lanl/qmasm
python setup.py install


# verilator
git clone http://git.veripool.org/git/verilator   # Only first time
unset VERILATOR_ROOT  # For bash
cd verilator
git pull        # Make sure we're up-to-date
git tag         # See what versions exist
autoconf        # Create ./configure script
./configure
make
sudo make install
cd ..

# yosys
sudo add-apt-repository ppa:saltmakrell/ppa
sudo apt-get update
sudo apt-get install yosys

# qbsolv
git clone https://github.com/dwavesystems/qbsolv qbsolv_git
cd qbsolv_git/src
make
cd ../..
cp qbsolv_git/src/qbsolv .
rm -r qbsolv_git
