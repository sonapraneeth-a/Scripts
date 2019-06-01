#!/bin/bash

cd Downloads
wget https://nodejs.org/dist/v10.16.0/node-v10.16.0-linux-x64.tar.xz
mkdir -p ~/Softwares
mv node-v10.16.0-linux-x64.tar.xz ~/Softwares
pushd ~/Softwares
tar -xf node-v10.16.0-linux-x64.tar.xz
mv node-v10.16.0-linux-x64 node-v10.16.0
popd

echo "alias node='~/Softwares/node-v10.16.0/bin/node'" >> ~/.bash_aliases
echo "alias npm='~/Softwares/node-v10.16.0/bin/npm'" >> ~/.bash_aliases
echo "export PATH=\"$PATH:$HOME/Softwares/node-v10.16.0/bin\"" >> ~/.bashrc

source ~/.bashrc
