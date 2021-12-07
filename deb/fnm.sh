#!/bin/bash

if [[ -n `command -v fnm` ]]; then
  echo Fnm already installed, skipping...
else
	curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "./.fnm" --skip-shell
fi
