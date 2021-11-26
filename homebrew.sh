#!/bin/bash

WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing software with homebrew..."
echo "workdir $WORKDIR"

# check for workdir
if [[ $WORKDIR != *dotfiles ]]; then
  echo "Install script must be executed in dotfiles directory because of relativ paths!"
  exit 1
fi

# install everything from Brewfile, which can be created by created running 'brew bundle dump'
CMD="brew bundle --file $WORKDIR/Brewfile"
echo "> executing $CMD"
eval ${CMD}

echo "DONE!"
