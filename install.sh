#! /bin/sh

if [ ! -d ~/.vim ] ; then
	mkdir ~/.vim
fi

cp -R autoload ~/.vim
cp -R doc ~/.vim
cp -R plugin ~/.vim

if [ ! -f ~/.vimrc ] ; then
    touch ~/.vimrc
fi

cat >> ~/.vimrc << EOF
" configs about vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
EOF

# vim: set fileencoding=utf-8 ts=4 sts=4 sw=4 tw=80 expandtab:
