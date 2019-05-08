#!/usr/bin/env bash

DOTFILE_ROOT=$HOME/dotfiles

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s $DOTFILE_ROOT/.zshrc $HOME
ln -s $DOTFILE_ROOT/.vimrc $HOME
ln -s $DOTFILE_ROOT/.tmux.conf $HOME

# download tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# create nvim directory
NVIM_ROOT=$HOME/.config/nvim
mkdir -p $NVIM_ROOT
ln -s $DOTFILE_ROOT/init.vim $NVIM_ROOT
