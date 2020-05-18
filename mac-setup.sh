cd $HOME

# zshell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install zsh
chsh -s zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# remove default .zshrc
rm -f $HOME/.zshrc $HOME
ln -s $HOME/dotfiles/.zshrc $HOME

brew install tmux
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
ln -s $HOME/dotfiles/.tmux.conf $HOME

brew install pyenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> $HOME/.zshenv
exec "$SHELL"
pyenv install 3.8.0
pyenv global 3.8.0
python --version

brew install direnv
ln -s $HOME/dotfiles/.direnvrc $HOME

brew install neovim
pip install pynvim
mkdir -p $HOME/.config/nvim
ln -s $HOME/dotfiles/init.vim $HOME/.config/nvim/
ln -s $HOME/dotfiles/.vimrc $HOME

ln -s $HOME/dotfiles/.gitconfig $HOME

curl -fLo $HOME/dotfiles/Gruvbox-dark.terminal https://raw.githubusercontent.com/morhetz/gruvbox-contrib/master/osx-terminal/Gruvbox-dark.terminal
# Import Gruvbox-dark.terminal as a new profile in osx terminal
# Download and install inconsolata from https://fonts.google.com/specimen/Inconsolata
# Change the newly created profile to use the font.
