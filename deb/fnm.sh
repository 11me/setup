#!/bin/bash

if [[ -n `command -v fnm` ]]; then
  echo Fnm already installed, skipping...
else
	curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "./.fnm" --skip-shell
  fnm install "v17.1.0"
  fnm use "v17.1.0"
fi
