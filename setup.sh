#!/bin/bash



echo "-----Install Chia and add keys-----"
git clone https://github.com/Chia-Network/chia-blockchain.git ~/chia-blockchain
bash ~/chia-blockchain/install.sh
cd ~/chia-blockchain/
. ./activate
chia init
chia keys add -f keys.txt
