install: install-brew install-bundle install-fish install-rcs install-vim-plugins

install-brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap Homebrew/bundle

install-bundle:
	brew update
	brew bundle

install-fish:
	echo /usr/local/bin/fish | sudo tee -a /etc/shells
	chsh -s `which fish`

install-rcs:
	rcup -v -i rcrc
	rcup -v -i

install-vim-plugins:
	exec vim +PlugInstall +qall < /dev/tty "$@"
