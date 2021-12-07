#!/bin/bash

if [[ -n `command -v rg` ]]; then
  echo Rg already installed, skipping...
else
	sudo apt update -y && sudo apt install -y ripgrep
fi
