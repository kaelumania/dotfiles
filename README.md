# kaelumania's dotfiles

these are my maybe up-to-date dotfiles

## Manage dotfiles

I am managing my dotfiles with [rcm](https://github.com/thoughtbot/rcm)

### Install RCM

    brew tap thoughtbot/formulae
    brew install rcm

### Bootstrap dotfiles

    env RCRC=$HOME/projects/dotfiles/rcrc rcup

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use the following default configuration options:

* Exclude the `README.md` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
* Sets the dotfiles directory to 
  `~/projects/dotfiles`

### Update dotfiles

You can safely run `rcup` multiple times to update:

    rcup

### Syntax highlighting dotfiles with sublime

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Sublime Text 3 Package Control](http://wbond.net/sublime_packages/package_control)

## Bootstrap a new machine

When setting up a new Mac, you may want to set some sensible OS X defaults and install default brew packages or applications via cask:

```bash
./.setup-osx
./.setup-brew
```
