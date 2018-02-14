#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install transmission
brew cask install vlc

# dev
brew cask install imagealpha
brew cask install imageoptim

# Quicklook plugins
brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install quicknfo
brew cask install suspicious-package

# browsers
brew cask install google-chrome
brew cask install firefox
brew cask install opera

brew cask cleanup
