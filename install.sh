DOTFILES=~/.dotfiles
if [ -d $DOTFILES ]; then
  echo "$DOTFILES already exists! Aborting."
  exit 1
fi

# Fetch dotfiles
git clone git@github.com:kaelumania/dotfiles.git $DOTFILES
cd $DOTFILES

# Install homebrew packages
brew update
brew tap Homebrew/bundle
brew bundle

# Symlink dotfiles
rcup -v rcrc
rcup -v

# Install Vim plugins
exec vim +PlugInstall +qall < /dev/tty "$@"
