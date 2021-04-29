# dotfiles

Basic settings for new computer. Inspired by
[dotfiles](https://github.com/mathiasbynens/dotfiles) from Mathias Bynens.

**NOTE:** Remember to update your Git and SSH key gen settings in `.bootstrap`.

## Install

```
source .bootstrap && source .macos
```

## Thing's still needed to be configured manually or not yet added to dotfiles

- Fonts ([Example](https://gist.github.com/codeinthehole/26b37efa67041e1307db))
  - Source Code Pro
- Three finger drag
  - `System Preferences > Accessibility > Mouse & Trackpad > Trackpad options > Enable dragging > three finger drag`
- Add empty space to dock
  - `defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock`
- Move between words with alt + arrow keys in iTerm
  - `iTerm Preferences > Profiles > Select your profile > Keys tab > Click Load Preset > Choose Natural Text Editing`
## TODO

- Add configuration files
  - iTerm
  - VS Code
