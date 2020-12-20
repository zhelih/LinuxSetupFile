#!/bin/bash

# possible to use SVN instead of git to checkout

vim_plugins="
https://github.com/sbdchd/neoformat.git
https://github.com/mileszs/ack.vim.git
https://github.com/ervandew/supertab.git
https://github.com/scrooloose/syntastic.git
https://github.com/ConradIrwin/vim-bracketed-paste
https://github.com/easymotion/vim-easymotion
https://github.com/tpope/vim-fugitive.git
https://github.com/airblade/vim-gitgutter.git
https://github.com/ocaml/vim-ocaml.git
https://sanctum.geek.nz/code/vim-redact-pass.git
https://github.com/tpope/vim-repeat.git
https://github.com/tpope/vim-speeddating.git
https://github.com/tpope/vim-surround.git
https://github.com/milkypostman/vim-togglelist.git
https://github.com/tpope/vim-unimpaired.git
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

# install plugins
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
for plugin in $vim_plugins; do
  git clone $plugin
done
