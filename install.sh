#!/bin/sh
##
#
#  Install for my dotfiles
#  Author: Fabian Born <git@fabianborn.net>
#
#  Changelog:
#  # 2020/06/30 	initial
#  # 2020/07/20		changes in zsh
##

if [ -d $HOME/dotfiles ]; then
    cd $HOME/dotfiles && git pull
else
    cd $HOME && git clone https://github.com/fabian-born/dotfiles.git
fi

cd $HOME/dotfiles
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/dotfiles/fzf

mkdir -p $HOME/.vimbackup
mkdir -p $HOME/.config/nvim

ln -sf $HOME/dotfiles/oh-my-zsh $HOME/.oh-my-zsh
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/tmux $HOME/.tmux
ln -sf $HOME/dotfiles/fzf/ $HOME/.fzf
ln -sf $HOME/dotfiles/p10k.zsh $HOME/.p10k.zsh

cd $HOME/dotfiles
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/dotfiles/zsh-themes/powerlevel10k
source $HOME/dotfiles/zsh-themes/powerlevel10k/powerlevel10k.zsh-theme

$HOME/.fzf/install --all

