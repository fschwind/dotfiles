## add environment variables and set the path
if [ -f ~/.env ]; then
     . ~/.env
fi

## load common aliases
if [ -f ~/.alias ]; then
     . ~/.alias
fi

## add systemspecific extras (if they exist)
if [ -f ~/.alias_extra ]; then
     . ~/.alias_extra
fi

####################################################################################

## ZSH specific options

# custom prompt (user@host:directory)
PROMPT='%n@%m:%~$ '

## history handling
# use histfile
export HISTFILE=~/.zsh_history
# erase duplicates from history
setopt HIST_IGNORE_ALL_DUPS
# set history size
export HISTFILESIZE=10000000
export HISTSIZE=1000000
# append immediately to history
setopt INC_APPEND_HISTORY

