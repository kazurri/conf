#!/bin/sh

export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/bin:/sbin

LOG=/tmp/homebrew.log

brew upgrade 1>${LOG} 2>&1
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock

