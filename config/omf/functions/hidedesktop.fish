function hidedesktop
  # Hide all desktop icons (useful when presenting)
  defaults write com.apple.finder CreateDesktop -bool false; and killall Finder
end
