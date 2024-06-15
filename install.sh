#!/usr/bin/env bash

pushd "$( dirname "$0" )"

DOTFILES_DIR="$( pwd )"

echo "Installing dotfiles..."

mkdir -p ~/.config
mkdir -p ~/.local/bin

# ln -s <destination> <symlink-to-create>
ln -sf $(pwd)/config/nvim ~/.config/nvim
ln -sf $(pwd)/config/tmux ~/.config/tmux
ln -sf $(pwd)/bin/tmux-sessionizer ~/.local/bin/tmux-sessionizer

popd
