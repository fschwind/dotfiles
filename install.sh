#!/bin/bash

WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

NOW=$(date +%Y%m%d_%H%M%S)

echo "Installing dotfiles..."
echo "workdir $WORKDIR"
echo ""

# check for workdir
if [[ $WORKDIR != *dotfiles ]]; then
  echo "Install script must be executed in dotfiles directory because of relativ paths!"
  exit 1
fi

# backup_and_link <file>
function backup_and_link {
    FILE=$1
    SOURCE=$WORKDIR/$FILE
    TARGET=$HOME/$FILE

    echo "installing $TARGET"

    if [[ -L "$TARGET" ]]; then
        # remove the link
        CMD="rm $TARGET"
        echo " > executing $CMD"
        eval ${CMD}
    elif [[ -f "$TARGET" || -d "$TARGET" ]]; then
        # backup the file
        CMD="mv $TARGET $TARGET.bak.$NOW"
        echo " > executing $CMD"
        eval ${CMD}
    fi
    
    # link the dot-file
    CMD="ln -s $SOURCE $TARGET"
    echo " > executing $CMD"
    eval ${CMD}

    echo ""
}


# backup all old files and link to current dot-files
backup_and_link .zshrc

backup_and_link .bashrc
backup_and_link .bash_profile

backup_and_link .alias
backup_and_link .env

backup_and_link .vim
backup_and_link .vimrc

echo "DONE!"
