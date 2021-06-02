#!/bin/bash



echo "-----Install Chia and add keys-----"
git clone https://github.com/Chia-Network/chia-blockchain.git 
bash ~/chuckschiamanager/chia-blockchaininstall.sh
. ./activate
chia init
chia keys add -f keys.txt
