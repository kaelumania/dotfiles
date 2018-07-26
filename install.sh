#!/usr/bin/env sh
set -euo pipefail

DOTFILES=~/.dotfiles
if [ -d $DOTFILES ]; then
  echo "$DOTFILES already exists! Aborting."
  exit 1
fi

# Fetch dotfiles
git clone https://github.com/kaelumania/dotfiles.git $DOTFILES
cd $DOTFILES

# Install homebrew packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew bundle

# Symlink dotfiles
rcup -v rcrc
rcup -v

# Install Vim plugins
exec vim +PlugInstall +qall < /dev/tty "$@"

# Install ASDF version manager
#cd $HOME
#git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.0

# Use fish as default shell
FISH=/usr/local/bin/fish
if grep -vFxq $FISH /etc/shells
then
  echo "Adding $FISH to /etc/shells"
  echo $FISH | sudo tee -a /etc/shells
fi
chsh -s $FISH

# Install fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
exec fisher

