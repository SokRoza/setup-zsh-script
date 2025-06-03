#!/bin/bash

sudo apt install zsh -y

export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' "$HOME/.zshrc"

echo "Setup Done!"

