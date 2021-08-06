# Aliases
alias diff='diff --color=auto --unified'
alias emacs='emacs -nw'
alias ll='ls -l'
alias ls='ls --color=auto'
alias sush='sudo sh -c'
alias imsize="identify -format '%f: %wx%h\n'"

# Command Completion
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

## Enable completion of command line switches for aliases.
setopt COMPLETE_ALIASES

# Key Bindings
bindkey -e

## Alt+Left and Alt+Right move one word left or right.
bindkey '^[[1;3D' backward-word
bindkey '^[[1;3C' forward-word

## Use bash-style word boundaries.
autoload -U select-word-style
select-word-style bash

## Ctrl+X, Ctrl+E opens the current command in a text editor.
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# Prompt
autoload -Uz promptinit
promptinit
prompt redhat
