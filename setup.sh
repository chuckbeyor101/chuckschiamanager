#!/bin/bash

echo "-----Install Chia and add keys-----"
git clone https://github.com/Chia-Network/chia-blockchain.git ~/chia-blockchain
cd ~/chia-blockchain
bash install.sh
. ./activate
chia init
chia keys add -f keys.txt
