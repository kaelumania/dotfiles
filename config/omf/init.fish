# remove greeting
set fish_greeting

# Use vi bindings
fish_vi_mode

# Set default editor to vim
set -gx EDITOR vim

# Base abbr.
abbr -a v vim
abbr -a g git
abbr -a be bundle exec
abbr -a d docker
abbr -a dm docker-machine
abbr -a dc docker-compose

# Git abbr.
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit -v
abbr -a gcm git commit -m
abbr -a gcam git add -A and git commit -m
abbr -a gco git checkout
abbr -a gcob git checkout -b
abbr -a gr git remote
abbr -a grh git reset HEAD
abbr -a grhh git reset HEAD --hard
abbr -a gp git pull
abbr -a gup git push
abbr -a gs git status -s
abbr -a gd git d
abbr -a gdf git diff
abbr -a gdfc git diff --cached

# Key Bindings
bind --mode insert --sets-mode default jk backward-char force-repaint

bind -M visual -m insert c kill-selection end-selection force-repaint

bind \cl 'clear; commandline -f repaint'
bind -M insert \cl 'clear; commandline -f repaint'

bind -M insert \ca accept-autosuggestion

bind \ck backward-kill-line

bind \cr peco_select_history
bind -M insert \cr peco_select_history

# Useful functions

# Run git status if git is called without args
function git
  if count $argv > /dev/null # alternative: set -q argv
    command git $argv
  else
    command git status -sb
  end
end

# Recursively delete `.DS_Store` files
function cleanup
  find . -name '*.DS_Store' -type f -ls -delete
end

# Empty the Trash on all mounted volumes and the main HDD
function emptytrash
  sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash
end

# Hide all desktop icons (useful when presenting)
function hidedesktop
  defaults write com.apple.finder CreateDesktop -bool false and killall Finder
end

# Show all desktop icons (useful when presenting)
function showdesktop
  defaults write com.apple.finder CreateDesktop -bool true and killall Finder
end
