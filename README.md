# kaelumania's dotfiles

These are my current dotfiles and setup code

## Setup a new Machine

### Clone this repository

`git clone git@github.com:kaelumania/dotfiles.git ~/.dotfiles`

### Execute Makefile

`make install`

`./osx.sh`

### Install powerline font

Install powerline fonts:

`git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh`

Add this font to iTerm2:

`iTerm > Preferences > Profiles > Text`

### Install solarized color scheme

Install solarized themes

`git clone https://github.com/altercation/solarized`

## Side Notes

* I am using rcm to manage rc files [rcm](https://github.com/thoughtbot/rcm). In order to relink all rc files you can run `rcup -f`
