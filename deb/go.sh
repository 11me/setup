#!/bin/bash

if [[ -n `command -v go` ]]; then
  echo Go already installed, skipping...
else
  curl -Lo "/tmp/go.tar.gz" "https://go.dev/dl/go1.17.4.linux-amd64.tar.gz"
  tar xzv --directory="$HOME" -f "/tmp/go.tar.gz"
fi
