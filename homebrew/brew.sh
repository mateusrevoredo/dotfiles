#!/usr/bin/env bash

brew_config_dir=`dirname $0`
#Call the other script

for i in "$@"
do
case $i in
    -a|--apps)
    brew bundle --no-lock --file=$brew_config_dir/apps/Brewfile --no-lock
    ;;
    -b|--binaries)
    brew bundle --no-lock --file=$brew_config_dir/binaries/Brewfile --no-lock
    ;;
    -m|--mas)
    brew bundle --no-lock --file=$brew_config_dir/mas/Brewfile --no-lock
    ;;
    *)
          # unknown option
    ;;
esac
done