#!/bin/bash

if [[ -n `command -v git` ]]; then
  echo Git already installed, skipping...
else
	sudo apt update -y && sudo apt install -y git
	git config --global user.name lime
	git config --global user.email lime
fi
