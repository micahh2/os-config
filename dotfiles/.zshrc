# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/micah/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PATH=~/bin:$PATH

for FOLDER in $HOME/Applications/*(/); do
    BIN="$FOLDER"
    if [[ -a $BIN/bin ]]; then
        BIN+='/bin'
    fi
    if test "${PATH#*$BIN}" = "$PATH"; then
        PATH="$PATH:$BIN"
    fi
done

autoload -U promptinit
promptinit
prompt walters

alias tmux="tmux -2"
alias act=". venv/bin/activate"
alias dact="deactivate"
stty -ixon

