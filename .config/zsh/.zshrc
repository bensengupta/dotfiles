# ------------------------- env vars ----------------------
export PATH="$HOME/.local/bin:$PATH"

export EDITOR="nvim"

export HISTSIZE=10000
export SAVEHIST=10000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# ------------------------ aliases ------------------------
alias gco="git checkout"
alias gcb="git checkout -b"
alias gss="git status -s"
alias ga="git add"
alias gaa="git add --all"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gpf!="git push --force"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gd="git diff"
alias hs='history | grep'
alias hsi='history | grep -i'

alias linux="ssh -i ~/.ssh/id_bensengupta bsengupt@linux.socs.uoguelph.ca"
alias va="source .venv/bin/activate"

# ------------------------ keybinds -----------------------
bindkey -e # zsh: don't use vi mode

# make up arrow and down arrow auto-complete better
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
# Bind CTRL-F to tmux-sessionizer
bindkey -s ^f 'tmux-sessionizer\n'

# ------------------------ prompt -------------------------
setopt prompt_subst

function git_prompt_info() {
    local branch
    if branch=$(git symbolic-ref --short HEAD 2> /dev/null); then
        echo " %F{blue}git:(%F{red}${branch}%F{blue})%f"
    fi
}

PROMPT='%F{green}➜%f  %F{cyan}%c%f$(git_prompt_info) %f'

# ------------------------- scripts -----------------------
if [ -f "$ZDOTDIR/private.zsh" ]; then
    source "$ZDOTDIR/private.zsh"
fi

