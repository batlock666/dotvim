# Dotvim

Personal configuration for Vim.

## Debian Packages

* `vim`
* `vim-addon-manager`
* `vim-common`
* `vim-doc`
* `vim-gtk`
* `vim-gtk3`
* `vim-gui-common`
* `vim-runtime`
* `vim-scripts`
* `vim-tiny`

## Installation

    $ cd ~
    $ git clone $DOTVIMREPO $DOTVIMDIR
    $ cd $DOTVIMDIR
    $ git submodule init
    $ git submodule update
    $ vim -c "helptags ALL" -c q

    $ cd ~
    $ ln -s $DOTVIMDIR/_exrc .exrc
    $ ln -s $DOTVIMDIR/_vimrc .vimrc
    $ ln -s $DOTVIMDIR/_gvimrc .gvimrc
    $ ln -s $DOTVIMDIR/_vim .vim
