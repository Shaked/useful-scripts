#!/bin/bash

ls -la "$HOME/Library/Saved Application State"

echo "Choose folder"
read folder

echo "Should it resume? use bool"
read state

echo "Setting $folder NSQuitAlwaysKeepsWindows to $state" 
defaults write $folder NSQuitAlwaysKeepsWindows -bool $state 
echo "Done."
