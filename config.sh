#!/bin/bash
#
# file :  config.sh
# author: Steve Novakov 2016-06-28
#
# desc: a script to configure assorted files in ~/
# arguments: (must be exact)
#
#   deploy: copies files from git directory to ~/
#   copy  : copies files from ~/ to git directory
#

DIR=$(pwd)

DOTFILES="
  .bash_profile
  .bashrc
  .i3blocks.conf
  .vimrc
  .xinitrc
  .Xresources
  .config/redshift.conf
"

DIRECTORIES="
  scripts
  .config/i3/
  .vim/
"


if [ "$1"  = "copy" ];then
  echo "Copying configuration files..."
  for f in $DOTFILES
  do
    cp ~/$f $DIR/$f
  done

  for d in $DIRECTORIES
  do
    cd ~
    sub_files=$(find $d)
    for f in $sub_files
    do
      if [[ -f $f ]]; then
        cp --parents $f $DIR
      fi
    done
    cd $DIR
  done
elif [ "$1" = "deploy" ]; then
  echo "Deploying configuration files..."
  for f in $DOTFILES
  do
    cp $f ~/$f
  done
  for d in $DIRECTORIES
  do
    sub_files=$(find $d)
    for f in $sub_files
    do
      if [[ -f $f ]]; then
        cp --parents $f ~/
      fi
    done
  done
elif [ "$1" = "gitadd" ]; then
  echo "Adding all configuration files to commit..."
  for f in $DOTFILES
  do
    git add $f
  done
  for d in $DIRECTORIES
  do
    git add $d/*
  done
fi
