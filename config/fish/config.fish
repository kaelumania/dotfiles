# remove greeting
set fish_greeting

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
abbr -a gcam git add -A & git commit -m
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

# Use vi bindings
# https://github.com/fish-shell/fish-shell/issues/2254
# fish_vi_mode
# set fish_key_bindings fish_vi_key_bindings

# key bindings
# https://github.com/oh-my-fish/oh-my-fish/issues/211
function fish_user_key_bindings
  bind --mode insert --sets-mode default jk backward-char force-repaint

  bind \cl 'clear; commandline -f repaint'
  bind -M insert \cl 'clear; commandline -f repaint'

  bind \cr 'peco_select_history (commandline -b)'
  bind -M insert \cr 'peco_select_history (commandline -b)'
end
