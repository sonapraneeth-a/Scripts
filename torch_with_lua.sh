#!/bin/bash

git clone https://github.com/torch/distro.git ./torch --recursive
cd ./torch; bash install-deps;
./install.sh
source ~/.bashrc