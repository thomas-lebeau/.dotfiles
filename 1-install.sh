#!/usr/bin/env bash

set -e

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${BASEDIR}"

# Symlink a bunch of files
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
ln -sFfv "${BASEDIR}/.zshrc" ~/.zshrc
ln -sFfv "${BASEDIR}/.editorconfig" ~/.editorconfig
