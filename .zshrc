#----------------------------------------------
# Welcome to Stevan's .zshrc
#----------------------------------------------

# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Sets theme name to load
# Look in ~/.oh-my-zsh/themes/
# Optionally can be set to "random"
ZSH_THEME="stevancw"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(stevancw rails git brew gem rvm heroku)

source $ZSH/oh-my-zsh.sh

# PATH definition
export PATH=/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/lib/ruby/user-gems/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/stevancw/.rvm/bin/usr/texbin:/usr/texbin:${PATH}


# RVM stuff
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
    source $HOME/.rvm/scripts/rvm
fi

# Defines ll
alias ll="ls -lahG"

#----------------------------------------------
# That's all folks!
#----------------------------------------------
