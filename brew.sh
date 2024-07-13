#!/bin/bash

# Make sure homebrew is installed first
if [[ ! "$(type -P brew)" ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew tap caskroom/cask
brew doctor
brew update

brew install htop
brew install tree

# Browser installation 
brew install --cask firefox
brew install --cask arc

# Software development tools
brew install nvm
brew install docker
brew install docker-compose
brew install --cask visual-studio-code

# Messaging application
brew install --cask whatsapp
brew install --cask signal
brew install --cask zoom
brew install --cask slack

# Desktop and window management
brew install --cask caffeine
brew install --cask rectangle

# Utilities
brew install --cask chatgpt
brew install --cask notion
brew install --cask adobe-acrobat-reader
brew install --cask 1password

