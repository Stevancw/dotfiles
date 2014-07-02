#  ___| |_ _____   ____ _ _ __   _____      __
# / __| __/ _ \ \ / / _` | '_ \ / __\ \ /\ / /
# \__ \ ||  __/\ V / (_| | | | | (__ \ V  V / 
# |___/\__\___| \_/ \__,_|_| |_|\___| \_/\_/  
#
# Stevan C Wing June 2014
#---------------------------------------------

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stevancw"

plugins=(git bundler brew gem stevancw)

export PATH=/usr/local/bin:$PATH

# What is the $PATH?
# /usr/local/heroku/bin:/Users/stevancw/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin

source $ZSH/oh-my-zsh.sh

# Defines ll
alias ll="ls -lahG"
#Defines end tmux session
alias tkill="tmux kill-session -t"

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Set the default editor
export EDITOR='vim'

### Set up for tumxinator
source ~/.tmuxinator.zsh

