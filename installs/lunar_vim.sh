#!/bin/bash
# install LunarVim
# Reference: https://www.lunarvim.org/docs/installation
read -p ":: Did you connect to Int? [Y/n]: " input
if [[ $input = "" ]]; then
  input="Y"
fi

if [[ $input = "Y" ]]; then
  echo "Start install"
  bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
else
  echo "End"
fi


