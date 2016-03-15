install: install-brew install-bundle install-fish install-rcs install-omf install-vim-plugins

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

install-omf:
	curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

install-vim-plugins:
	exec vim +PlugInstall +qall < /dev/tty "$@"
