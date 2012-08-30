# See this article for explanation of order of execution
# http://www.thegeekstuff.com/2008/10/execution-sequence-for-bash_profile-bashrc-bash_login-profile-and-bash_logout/

INSTALL_PATH=~/Code/dotfiles

. $INSTALL_PATH/bash/env
. $INSTALL_PATH/bash/private-env
. $INSTALL_PATH/bash/config
#. $INSTALL_PATH/bash/completions

for f in $INSTALL_PATH/bash/aliases/*; do 
	source $f; 
done

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
