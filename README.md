dotfiles
========

Collection of various config files to get the system (macOS) up and running.

## Installation

Update the system and install xcode commandline-tools:

    sudo softwareupdate -i -a
    xcode-select --install
    
Clone the repository:
    
    git clone https://github.com/fschwind/dotfiles.git ~/.dotfiles

Install dotfiles:

    sh .dotfiles/install.sh

This does a backup of the existing dotfiles and creates symlink to the new ones. 

## Homebrew

Install homebrew (https://brew.sh) by running:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
Install software with homebrew by running:

    sh .dotfiles/homebrew.sh

## Vim and Terminal color scheme

The Vim and Terminal color scheme originate from http://color.smyck.org. The Terminal scheme can be installed by importing it as a new profile and the Vim scheme is set as default by install.sh.
