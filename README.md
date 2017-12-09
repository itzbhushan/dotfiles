## Overview
Collection of configuration files.

This repo contains configuration files for essential tools in my toolkit.
Currently, this repo contains dotfiles for vim, pylint, tmux and zsh.
Clone this project and add a link to the individual rc files. For example:

    ln -s dotfiles/.zshrc .zshrc

Xfce is a lightweight desktop environment for Linux. `Xfce-vnc` contains:

(1) a vnc startup file that should be placed in the `~/.vnc` directory

    ln -s dotfiles/xfce-vnc/xstartup ~/.vnc/

(2) a keyboard shortcut file that allows tab-completion within vnc

    ln -s dotfiles/xfce-vnc/xfce4-keyboard-shortcuts.xml \
    ~/.config/xfce4/xfconf/xfce-perchannel-xml/
