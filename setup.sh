#change Permissions (Comment out these 2 lines for higher security)
sudo sed -i 's/ALL=(ALL:ALL) ALL/ALL=(ALL:ALL) NOPASSWD:ALL/g' /etc/sudoers
sudo sed -i 's/ALL=(ALL) ALL/ALL=(ALL) NOPASSWD:ALL/g' /etc/sudoers

#Update System
sudo apt update
sudo apt upgrade -y
sudo apt install git -y

#Install iftop to monitor network connections
sudo apt-get install iftop -y

#Install SSH
sudo apt install openssh-server

#Install Samba
sudo apt install samba -y

#Install Chia and add keys
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest
cd /home/$USERNAME/chia-blockchain
sh install.sh
. ./activate
chia init
chia keys add -f /home/$USERNAME/chiamanager/keys.txt
