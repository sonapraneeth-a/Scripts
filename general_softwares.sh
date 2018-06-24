#!/bin/bash

# Latest version of node. Stable version: 8.x
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install madoko -g

# Latest version of git
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get -y install git

# Net speed utility to check internet speed
sudo apt-add-repository ppa:fixnix/netspeed
sudo apt-get update
sudo apt-get install indicator-netspeed-unity

# Hotspot commands
sudo apt-get install net-tools
git clone https://github.com/oblique/create_ap.git
cd create_ap
sudo make install
sudo apt install hostapd
sudo create_ap wlp3s0 wlp3s0 <username> <password>

# Chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
cd ~/Downloads/Softwares/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

sudo apt-get -y install vim vim-gnome emacs
sudo apt-get -y install linuxdcpp
sudo apt-get -y install okular
sudo apt-get -y install curl
sudo apt-get -y install python-gpgme
sudo apt-get -y install openssh-server
sudo apt-get -y install perl-tk
sudo apt-get -y install unrar
sudo apt-get -y install imagemagick
sudo apt-get -y install yakuake screen tmux
sudo apt-get -y install doxygen
sudo apt-get -y install htop
sudo apt-get -y install scrot shutter
sudo apt-get -y install terminator
sudo apt-get -y install colordiff

sudo add-apt-repository ppa:stebbins/handbrake-releases
sudo apt-get update
sudo apt-get install handbrake-gtk handbrake-cli

sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt install simplescreenrecorder simplescreenrecorder-lib

