#!/bin/sh
##
#
#  Install for my dotfiles
#  Author: Fabian Born <git@fabianborn.net>
#
#  Changelog:
#  # 2020/06/30 	initial
##

if [ -d $HOME/dotfiles ]; then
    cd $HOME/dotfiles && git pull
else
    cd $HOME && git clone https://github.com/fabian-born/dotfiles.git
fi

cd $HOME/dotfiles
git submodule update --init --recursive

mkdir -p $HOME/.vimbackup
mkdir -p $HOME/.config/nvim

ln -sf $HOME/dotfiles/oh-my-zsh $HOME/.oh-my-zsh
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/tmux $HOME/.tmux
ln -sf $HOME/dotfiles/fzf/ $HOME/.fzf
ln -sf $HOME/dotfiles/functions $HOME/.functions

$HOME/.fzf/install --all
