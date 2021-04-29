# dotfiles

Basic settings for new computer. Inspired by
[dotfiles](https://github.com/mathiasbynens/dotfiles) from Mathias Bynens.

**NOTE:** Remember to update your Git settings in `.bootstrap`

## Install

`./.bootstrap && ./.macos`

## Thing's still needed to be configured manually or not in dotfiles

- Fonts ([Example](https://gist.github.com/codeinthehole/26b37efa67041e1307db))
  - Source Code Pro
- Three finger drag

`System Preferences > Accessibility > Mouse & Trackpad > Trackpad options > Enable dragging > three finger drag`

- Add empty space to dock

`defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock`

## TODO

- Add configuration files
  - iTerm
  - VS Code
