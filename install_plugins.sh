#!/bin/bash

vim_plugins="
git@github.com:sbdchd/neoformat.git
git@github.com:mileszs/ack.vim.git
https://github.com/sbdchd/neoformat
git@github.com:ervandew/supertab.git
https://github.com/scrooloose/syntastic.git
https://github.com/ConradIrwin/vim-bracketed-paste
https://github.com/easymotion/vim-easymotion
git://github.com/tpope/vim-fugitive.git
git://github.com/airblade/vim-gitgutter.git
https://github.com/ocaml/vim-ocaml.git
https://sanctum.geek.nz/code/vim-redact-pass.git
git://github.com/tpope/vim-repeat.git
git://github.com/tpope/vim-speeddating.git
git://github.com/tpope/vim-surround.git
https://github.com/milkypostman/vim-togglelist.git
git@github.com:tpope/vim-unimpaired.git
"

install="
.bashrc
.vimrc
.inputrc
"

for i in $install; do
  while true; do
    read -p "Do you wish to install $i (y/n)" yn
    case $yn in
      [Yy]* ) cp $i ~/; break;;
      [Nn]* ) break;;
      * ) echo "Please answer y or n.";;
    esac
  done
done

exit

while true; do
  read -p "Do you wish to install .vimrc? (y/n)" yn
  case $yn in
    [Yy]* ) cp .vimrc ~/; break;;
    [Nn]* ) ;;
    * ) echo "Please answer y or n.";;
  esac
done


# install plugins
mkdir -p ~/.vim
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
for plugin in $vim_plugins; do
  git clone $plugin
done
