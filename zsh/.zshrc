# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/home/dane/.local/bin:$PATH

export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/go/bin:$PATH

# for golang gRPC
# export PATH="$PATH:$(go env GOPATH)/bin"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### ANTIDOTE ###
# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Load the plugin
source ~/.antidote/antidote.zsh

#Lazy load the plugins
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source /path-to-antidote/antidote.zsh
    antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
  )
fi
source ${zsh_plugins}.zsh

### PROMPT ###

eval "$(starship init zsh)" # actually fast

# # Basic
# autoload -Uz vcs_info
# precmd() { vcs_info }
#
# zstyle ':vcs_info:git:*' formats '%b '
#
# setopt PROMPT_SUBST
# PROMPT='%F{green}%*%f %F{blue}%3~%f %F{red}${vcs_info_msg_0_}%f$ '


# ALIASES
export PROJECTS="~/code/projects"

alias update="sudo apt update && sudo apt upgrade -y"
alias ..="cd .."
alias c="clear"
alias nv='nvim'
alias la="ls -a"

alias P="python3 main.py"
alias p="python3" 

alias comc="g++ -Wall -std=c++17"
alias ccc="cmake -B ./build/ && make --directory ./build/ && ./build/build"

alias proj="$PROJECTS/project_navigator/init.sh"
alias password="$PROJECTS/passwords/init.sh"
alias timer="$PROJECTS/timer/init.sh"

alias xeph="Xephyr :5 & sleep 1 ; DISPLAY=:5 awesome"


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/dane/google-cloud-sdk/path.zsh.inc' ]; then . '/home/dane/google-cloud-sdk/path.zsh.inc'; fi
#
# # The next line enables shell command completion for gcloud.
# if [ -f '/home/dane/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/dane/google-cloud-sdk/completion.zsh.inc'; fi
# fpath+=${ZDOTDIR:-~}/.zsh_functions
