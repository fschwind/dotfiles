## add environment variables and set the path
if [ -f ~/.env ]; then
     . ~/.env
fi

## load common aliases
if [ -f ~/.alias ]; then
     . ~/.alias
fi

## add systemspecific extras (if they exist)
if [ -f ~/.alias_extras ]; then
     . ~/.alias_extras
fi

####################################################################################

## BASH specific options

# ignore deprecation warning on macos
export BASH_SILENCE_DEPRECATION_WARNING=1

# custom prompt (user@host:directory)
PS1='\u@\h:\w\$ '

## history handling
# Erase duplicates
export HISTCONTROL=erasedups
# set history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend

