#1/bin/bash

if [[ -n `command -v pass` ]]; then
  echo Pass already installed, skipping...
else
  sudo apt update -y && sudo apt install -y pass
fi
