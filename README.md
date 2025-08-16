# dotfiles

Dotfiles, managed with [GNU Stow](https://www.gnu.org/software/stow/).

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
