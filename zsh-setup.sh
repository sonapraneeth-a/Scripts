#!/bin/bash

# Reference: https://medium.com/@alex285/get-powerlevel9k-the-most-cool-linux-shell-ever-1c38516b0caa
# Reference: https://medium.com/the-code-review/powerlevel9k-personalise-your-prompt-for-any-programming-language-68974c127c63
# Reference: https://github.com/bhilburn/powerlevel9k#prompt-customization

sudo apt-get install zsh
sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get install python3-pip
pip3 install --user powerline-status

git clone https://github.com/powerline/fonts.git --depth=1 ~/Softwares/powerline-fonts
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1 ~/Softwares/nerd-fonts
cd powerline-fonts
./install.sh

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k