#!/bin/bash

git clone https://github.com/p77u4n/nvim
chown -R tuancr ./nvim/
mkdir -p /home/tuancr/.config
mv nvim /home/tuancr/.config/
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
ln -s $(which python3) /usr/local/bin/python3
npm install -g neovim
npm install -g eslint
npm install -g js-beautify
npm install -g css-beautify
sudo gem install sass
npm install -g remark-cli
npm install -g import-js
rm -rf nvim

# install ctags

git clone https://github.com/universal-ctags/ctags.git
cd ctags
sudo apt-get install pkg-config
./autogen.sh
./configure --prefix=/usr/local # defaults to /usr/local
make
sudo make install # may require extra privileges depending on where to install
cd ..
rm -rf ctags
echo "done ctags"

# install ag for fzf search string

sudo apt-get install silversearcher-ag
sudo apt-get install ripgrep 
