install: install-brew install-bundle install-fish install-rcs install-fisherman install-vim-plugins

install-brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap Homebrew/bundle

install-brew-bundle:
	brew update
	brew bundle

install-fish:
	echo /usr/local/bin/fish | sudo tee -a /etc/shells
	chsh -s `which fish`

install-rcs:
	rcup -v -f rcrc
	rcup -v -f

install-fisherman:
	curl -Lo ./config/fish/functions/fisher.fish --create-dirs git.io/fisher

install-vim-plugins:
	exec vim +PlugInstall +qall < /dev/tty "$@"
