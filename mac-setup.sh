cd $HOME

# zshell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install zsh
chsh -s zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# replace default .zshrc .zshenv and .zprofile with ours
rm -f $HOME/.zshrc $HOME/.zprofile $HOME/.zshenv
ln -s $HOME/dotfiles/.zshrc $HOME
ln -s $HOME/dotfiles/.zprofile $HOME
ln -s $HOME/dotfiles/.zshenv $HOME

brew install tmux
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
ln -s $HOME/dotfiles/.tmux.conf $HOME

# package to manage multiple java installations.
brew install jenv

# package to manage multiple python installations.
brew install pyenv
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
ln -s $HOME/dotfiles/.gitignore_global $HOME
git config --global core.excludesfile $HOME/.gitignore_global

curl -fLo $HOME/dotfiles/Gruvbox-dark.terminal https://raw.githubusercontent.com/morhetz/gruvbox-contrib/master/osx-terminal/Gruvbox-dark.terminal
# Import Gruvbox-dark.terminal as a new profile in osx terminal
# Download and install inconsolata from https://fonts.google.com/specimen/Inconsolata
# Change the newly created profile to use the font.
