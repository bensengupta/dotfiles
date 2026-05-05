# dotfiles

Dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

Setup

```bash
# tree-sitter-cli = used by nvim-treesitter
# ripgrep = used by telescope-fzf-native
# fzf and tmux = used by tmux-sessionizer
brew install tree-sitter-cli ripgrep fzf tmux
# bob = neovim version manager
brew install bob
# fnm = node version manager
brew install fnm
```

Install

```bash
mkdir -p ~/.config
mkdir -p ~/.local
stow . -t $HOME
```

Uninstall

```bash
stow --delete . -t $HOME
```
