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

if [[ -a $HOME/Apps ]]; then
    for FOLDER in $HOME/Apps/*(/); do
        BIN="$FOLDER"
        if [[ -a $BIN/bin ]]; then
            BIN+='bin'
        fi
        if test "${PATH#*$BIN}" = "$PATH"; then
            PATH="$PATH:$BIN"
        fi
    done
fi

# Add installed via opt here:
# PATH=$PATH:/opt/gradle/gradle-4.10.2/bin
PATH=$PATH:$NVM_BIN

# Add installed
PATH="$PATH:$HOME""bin"

# For ruby gems / bundler
if [[ -a $HOME/.gem/ruby ]]; then
    for FOLDER in $HOME.gem/ruby/*(/); do
        [[ -z $FOLDER ]] && continue
        BIN="$FOLDER/bin"
        [[ ":$PATH:" = *":$BIN:"* ]] && continue
        PATH="$PATH:$BIN"
    done
fi


autoload -U promptinit
promptinit
prompt walters

alias tmux="tmux -2"
alias act=". venv/bin/activate"
alias dact="deactivate"
alias supertux="export LC_ALL=en_US.UTF-8 && flatpak run org.supertuxproject.SuperTux"
alias empty="firefox-developer-edition -P empty"

# Neovim
if [ -e $(which nvim) ];
then
	alias vim="nvim"
	export EDITOR=$(which nvim)
fi

# Color support
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#ARCHLINUX
alias pacman='aura'

stty -ixon

bindkey '^R' history-incremental-search-backward

export TERM='xterm-256color'
export MSSQL_CLI_TELEMETRY_OPTOUT=true

