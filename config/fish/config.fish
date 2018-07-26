# remove greeting
set fish_greeting

# Set default editor to vim
set -gx EDITOR vim

# nicer ls colors
set -gx LSCOLORS gxfxbEaEBxxEhEhBaDaCaD

# use 256 colors (fixes tmux colors)
set -gx TERM xterm-256color

# rbenv
status --is-interactive; and . (rbenv init -|psub)

# Base abbr.
abbr -a v vim
abbr -a g git
abbr -a be bundle exec
abbr -a d docker
abbr -a dc docker-compose

# Git abbr.
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit -v
abbr -a gcm git commit -m
abbr -a gcam "git add -A ;and git commit -m"
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

