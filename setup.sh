#!/bin/bash

mkdir ~/.vim
echo "Install the vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "copy the config file"
cp -f ./vimrc ~/.vimrc
cp -f ./gvimrc ~/.gvimrc

echo "Install the vim"
sudo apt install vim
sudo apt install vim-gnome

echo "Install the plug-ins"
# git clone https://github.com/powerline/fonts.git
cd fonts
/bin/sh ./install.sh
cd ../

sudo apt install exuberant-ctags


#sudo apt install vim-youcompleteme
#vam install youcompleteme
#sudo apt install vim-syntastic 
sudo apt install vim-fugitive 
