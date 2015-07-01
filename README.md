# kaelumania's dotfiles

these are my maybe up-to-date dotfiles

## Installation dotfiles
    curl -fsSL https://raw.githubusercontent.com/kaelumania/dotfiles/master/install.sh | sh

I am managing my dotfiles with [rcm](https://github.com/thoughtbot/rcm)

### Update dotfiles

You can safely run `rcup` multiple times to update:

    rcup

## Bootstrapping a new machine

When setting up a new Mac, you may want to set some sensible OS X defaults and install default brew packages or applications via cask:

```bash
./install.sh
./osx.sh
```
