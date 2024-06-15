#!/usr/bin/env bash

pushd "$( dirname "$0" )"

DOTFILES_DIR="$( pwd )"

echo "Installing dotfiles..."

mkdir -p ~/.config
mkdir -p ~/.local/bin

#        FROM ->  TO
# ln -s <file> <symlink>

ln -s $(pwd)/config/nvim ~/.config/nvim
ln -s $(pwd)/config/tmux ~/.config/tmux
ln -s $(pwd)/bin/tmux-sessionizer ~/.local/bin/tmux-sessionizer

popd
