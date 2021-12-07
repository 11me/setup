#!/bin/bash

if [[ -n `command -v helm` ]]; then
  echo Helm already installed, skipping...
else
  curl -o "$HOME/helm.tar.gz" "https://get.helm.sh/helm-v3.7.1-linux-amd64.tar.gz"
  tar xzv --directory="$HOME" -f "$HOME/helm.tar.gz"
  chmod +x "$HOME/linux-amd64/helm"
  [[ -d "$HOME/dotfiles" ]] && cp "$HOME/linux-amd64/helm" "$HOME/dotfiles/.local/bin/" || \
    cp "$HOME/linux-amd64/helm" /usr/local/bin/
fi
