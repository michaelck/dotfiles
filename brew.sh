#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --ell

# Do the following after installing bash
# echo /usr/local/bin/bash >> /etc/shells
# chsh -s /usr/local/bin/bash
brew install bash

brew tap homebrew/versions

brew install bash-completion2
brew install git
brew install mongodb

# Remove outdated versions from the cellar.
brew cleanup
