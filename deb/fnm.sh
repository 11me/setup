#!/bin/bash

if [[ -n `command -v fnm` ]]; then
  echo Fnm already installed, skipping...
else
	curl -o /tmp/fnm "https://fnm.vercel.app/install"
  chmod +x /tmp/fnm
  tmp/fnm --install-dir "$HOME/.fnm" --skip-shell
  exec bash -l
  fnm install "v17.1.0"
  fnm use "v17.1.0"
fi
