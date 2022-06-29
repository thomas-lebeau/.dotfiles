#!/usr/bin/env bash

set -e

# DOTBOT_DIR="dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Update submodules
cd "${BASEDIR}"
# git submodule update --init --recursive

# Backup some stuffs
mkdir -p ~/migration
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp -R ~/Library/Services ~/migration
cp -R ~/.ssh ~/migration
cp ~/.extra ~/migration
cp ~/.gitconfig.local ~/migration
cp ~/.gitconfig.newrelic ~/migration
cp ~/.npmrc ~/migration

if which brew >/dev/null; then
  brew leaves > ~/migration/brew-list.txt
  brew list --cask > ~/migration/cask-list.txt
fi;

if which npm > /dev/null; then
  npm list -g --depth=0 > ~/migration/npm-g-list.txt
fi;


# # Symlink a bunch of files
# ln -sFfv "${BASEDIR}" ~/.dotfiles
# ln -sFfv "${BASEDIR}/.aliases" ~/.aliases
# ln -sFfv "${BASEDIR}/.bash_profile" ~/.bash_profile
# ln -sFfv "${BASEDIR}/.bash_prompt" ~/.bash_prompt
# ln -sFfv "${BASEDIR}/.bashrc" ~/.bashrc
# ln -sFfv "${BASEDIR}/LS_COLORS/LS_COLORS" ~/.dircolors
# ln -sFfv "${BASEDIR}/.exports" ~/.exports
# ln -sFfv "${BASEDIR}/.functions" ~/.functions
# ln -sFfv "${BASEDIR}/.git-completion.bash" ~/.git-completion.bash
# ln -sFfv "${BASEDIR}/.gitattributes" ~/.gitattributes
# ln -sFfv "${BASEDIR}/.gitconfig" ~/.gitconfig
# ln -sFfv "${BASEDIR}/.gitignore" ~/.gitignore
# ln -sFfv "${BASEDIR}/.hushlogin" ~/.hushlogin
# ln -sFfv "${BASEDIR}/.inputrc" ~/.inputrc
# ln -sFfv "${BASEDIR}/.vimrc" ~/.vimrc
# ln -sFfv "${BASEDIR}/.zshrc" ~/.zshrc
# ln -sFfv "${BASEDIR}/.editorconfig" ~/.editorconfig
