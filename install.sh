#!/bin/bash

cd "$(dirname "$0")"

link-theme() {
  file="$PWD/$1.zsh-theme"
  if [ -f $file ]
  then
    ln -s $file "$ZSH/themes/$1.zsh-theme"
  else
    echo "No such file \"$file\""
  fi
}

link-theme mark
