#!/bin/bash

help() {
  cat<<-DOC
Usage:
  ./install.sh <OPTION>

Options:
  --deb  - install for debian based distributions
  --arch - install for archlinux based distributions
DOC
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

case "$1" in
  --deb)
      execute "deb";;
  --arch)
      echo arch;;
  *)
    help
esac
