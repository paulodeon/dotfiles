#!/bin/bash

dir=~/Code/dotfiles

rm ~/.gitconfig
rm ~/.gitignore
rm ~/.gitk
rm ~/.ssh/config
rm ~/.irbrc
rm ~/.railsrc
rm ~/.vimrc.before
rm ~/.vimrc.after

ln -s $dir/git/config ~/.gitconfig
ln -s $dir/git/ignore ~/.gitignore
ln -s $dir/git/gitk ~/.gitk
ln -s $dir/ssh/config ~/.ssh/config
ln -s $dir/irb/rc ~/.irbrc
ln -s $dir/rails/rc ~/.railsrc
ln -s $dir/vim/rc.before ~/.vimrc.before
ln -s $dir/vim/rc.after ~/.vimrc.after

# Could be good to add this instead of the below https://gist.github.com/3320963
echo ". $dir/bashrc" >> ~/.bashrc 

#$HOME is replaced in the below command
(cat - << EOF) >> ~/.bash_profile
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
EOF

#Copy ssh/config and .ec2 across

#For fastscripts create osx alias (symlinks don't work) ~/Library/Scripts -> /usr/local/bin/dotfiles/osx/Scripts
