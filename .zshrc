# sets up custom Terminal Coloring
autoload -U colors && colors
PS1="%{$fg[blue]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~ %{$fg[blue]%}% %% %{$reset_color%}% "

# sets up jenv correctly
PATH=$(pyenv root)/shims:$PATH
eval "$(jenv init -)"

# sets up Android tools
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# sets up nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# sets up custom terminal shortcuts
alias cl="clear"

# sets up custom github shortcuts
alias gt="git status"
alias gl="git log"
alias ga="git add"
alias gpl="git pull"
alias gcm="git commit -m"
alias gcmm="git commit --amend"
alias gck="git checkout"
alias gspu="git stash push"
alias gspo="git stash pop"
