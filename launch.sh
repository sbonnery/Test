#!/bin/bash
#
# Installation
# 
sudo apt-get -y install git
cd ~
rm -rf Test
git clone https://github.com/sbonnery/Test ~/Test
cd ~/Test
sudo bash install.sh
