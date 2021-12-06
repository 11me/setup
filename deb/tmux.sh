#!/bin/bash

# install tmux
[[ ! -n `command -v tmux` ]] && \
  sudo apt update -y && sudo apt install tmux -y \
  || echo "Tmux already installed, skipping..."
