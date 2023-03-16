#!/bin/bash

# Change theme
cp ./robbyrussell2.zsh-theme ~/.oh-my-zsh/custom/themes
sed -i '' 's/ZSH_THEME="robbyrussell"/ZSH_THEME="robbyrussell2"/' ~/.zshrc

# https://github.com/marlonrichert/zsh-autocomplete
mkdir -p ~/.zshs
rm -rf ~/.zshs/zsh-autocomplete
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zshs/zsh-autocomplete

sed -i '' 's/source\ $ZSH\/oh-my-zsh.sh//' ~/.zshrc
echo "source ~/.zshs/zsh-autocomplete/zsh-autocomplete.plugin.zsh" >> ~/.zshrc
echo "source \$ZSH/oh-my-zsh.sh" >> ~/.zshrc

source ~/.zshrc
