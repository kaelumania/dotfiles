function showdesktop
  # Show all desktop icons (useful when presenting)
  defaults write com.apple.finder CreateDesktop -bool true; and killall Finder
end
