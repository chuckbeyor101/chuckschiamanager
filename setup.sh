#change Permissions (Comment out these 2 lines for higher security)
#sudo sed -i 's/ALL=(ALL:ALL) ALL/ALL=(ALL:ALL) NOPASSWD:ALL/g' /etc/sudoers
#sudo sed -i 's/ALL=(ALL) ALL/ALL=(ALL) NOPASSWD:ALL/g' /etc/sudoers

echo "-----Update System------"
sudo apt update
sudo apt upgrade -y
sudo apt install git -y

echo "-----Install iftop to monitor network connections-----"
sudo apt-get install iftop -y

echo "-----Install SSH-----"
sudo apt install openssh-server

echo "-----Install Samba-----"
sudo apt -y install samba

echo "-----Install Chia and add keys-----"
cd ~/
Sleep 1200
git clone https://github.com/Chia-Network/chia-blockchain.git
cd ~/chia-blockchain
git pull https://github.com/Chia-Network/chia-blockchain.git
sh install.sh
. ./activate
chia init
chia keys add -f ~/chiamanager/keys.txt
