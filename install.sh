#!/bin/sh

if test "$1" = "osx"; then
  # Install Homebrew and link ssh file from Dropbox
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  brew install appledoc
  brew install androidsdk
  brew install tmux
  # Link all ssh configurations and keys back
  ln -s /Users/llun/Dropbox/Keys/ssh /Users/llun/.ssh
  # Install nvm and node.js
  curl https://raw.github.com/creationix/nvm/master/install.sh | sh

  #Copy environments back

elif test "$1" = "debian"; then
  apt-get install build-essential 
else
  echo "Please specify platform to install environment"
fi

