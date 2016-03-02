#!/usr/bin/env bash

set -e

# DOTBOT_DIR="dotbot"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Update submodules
cd "${BASEDIR}"
git submodule update --init --recursive

# Backup some stuffs
mkdir -p ~/migration
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp -R ~/Library/Services ~/migration
brew leaves > ~/migration/brew-list.txt
brew cask list > ~/migration/cask-list.txt
npm list -g --depth=0 > ~/migration/npm-g-list.txt


# Symlink a bunch of files
ln -shfv "${BASEDIR}" ~/.dotfiles
ln -sFfv "${BASEDIR}/.aliases" ~/.aliases
ln -sFfv "${BASEDIR}/.bash_profile" ~/.bash_profile
ln -sFfv "${BASEDIR}/.bash_prompt" ~/.bash_prompt
ln -sFfv "${BASEDIR}/.bashrc" ~/.bashrc
ln -sFfv "${BASEDIR}/LS_COLORS/LS_COLORS" ~/.dircolors
ln -sFfv "${BASEDIR}/.exports" ~/.exports
ln -sFfv "${BASEDIR}/.functions" ~/.functions
ln -sFfv "${BASEDIR}/.git-completion.bash" ~/.git-completion.bash
ln -sFfv "${BASEDIR}/.gitattributes" ~/.gitattributes
ln -sFfv "${BASEDIR}/.gitconfig" ~/.gitconfig
ln -sFfv "${BASEDIR}/.gitignore" ~/.gitignore
ln -sFfv "${BASEDIR}/.hushlogin" ~/.hushlogin
ln -sFfv "${BASEDIR}/.inputrc" ~/.inputrc
ln -sFfv "${BASEDIR}/.vimrc" ~/.vimrc

# Extras
ln -sFfv "${BASEDIR}/extras/.extra" ~/.extra
ln -sFfv "${BASEDIR}/extras/.gitconfig.local" ~/.gitconfig.local
ln -shfv "${BASEDIR}/extras/.ssh/" ~/.ssh
ln -sFfv "${BASEDIR}/extras/.gnupg" ~/.gnupg

# Fix private keys permitions
chmod 700 ~/.ssh/id_rsa
chmod 700 ~/.ssh/github_rsa
