#!/bin/bash

if [[ -n `command -v vim` ]]; then
  echo Vim already installed, skipping...
else
  sudo apt update -y && \
  sudo apt install -y \
                git \
                libxt-dev \
                libncurses-dev \
                gcc \
                make \
                clang \
                libtool-bin

  [[ ! -d $PWD/dwns ]] && mkdir -p $PWD/dwns
  git clone git@github.com:vim/vim.git $PWD/dwns/vim
  cd $PWD/dwns/vim/src && reconfigure && sudo make

  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
