#      _
#  ___| |_ _____   ____ _ _ __   _____      __
# / __| __/ _ \ \ / / _` | '_ \ / __\ \ /\ / /
# \__ \ ||  __/\ V / (_| | | | | (__ \ V  V / 
# |___/\__\___| \_/ \__,_|_| |_|\___| \_/\_/  
#
# Stevan C Wing January 2013
#---------------------------------------------

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stevancw"

plugins=(git bundler brew gem stevancw)

export PATH=/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Defines ll
alias ll="ls -lahG"

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
