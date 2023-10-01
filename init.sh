#!/bin/sh

sudo apt-get update
sudo apt-get install zsh
chsh -s /bin/zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
pip install powerline-status --user
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/
sed -i 's/plugins=(git)/plugins=(git\
	zsh-autosuggestions\
	zsh-syntax-highlighting)/' ~/.zshrc
source ~/.zshrc