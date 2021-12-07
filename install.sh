#!/bin/bash

help() {
  cat<<-DOC
Usage:
  ./install.sh <OPTION>

Options:
  --deb  - install for debian based distributions
  --arch - install for archlinux based distributions
  --dot  - install dotfiles
DOC
}

mint() {
  dconf load /org/cinnamon/ < "$HOME/dotfiles/.cinnamon-settings"
  dconf load /org/gnome/terminal/ < "$HOME/dotfiles/.org-gnome-terminal"
}

execute() {
  __path="$PWD/$1"

  if [[ -d $__path ]]; then

    for script in `ls $__path`

      do "$__path/$script"

    done;

  else
    printf "%s\n" "$__path not found"
    exit 1
  fi
}

create_link() {
  echo "Linking: $1 -> $2" && ln -sf $1 $2
}

install_dot() {
  dotfiles="$HOME/dotfiles"

  [[ -z `command -v git` ]] && \
    echo "INFO: git not found." && \
    sudo apt update -y && \
    sudo apt install -y git >/dev/null

  if [[ ! -d $dotfiles ]]; then

    git clone git@github.com:11me/dotfiles.git "$dotfiles"

  fi

  create_link "$dotfiles/.config/tmux/.tmux.conf" "$HOME/.tmux.conf"
  create_link "$dotfiles/.config/vim" "$HOME/.vim"
  create_link "$dotfiles/.local/bin" "$HOME/.local/bin"
  create_link "$dotfiles/.bashrc" "$HOME/.bashrc"
  create_link "$dotfiles/.dircolors" "$HOME/.dircolors"

}

case "$1" in
  --deb)
      execute "deb"
      ;;
  --arch)
      echo arch
      ;;
  --dot)
      install_dot
      ;;
  --restore-mint)
      mint
      ;;
  *)
      help
      ;;
esac
