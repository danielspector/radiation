#!/usr/bin/env bash
echo 'installing neccessary Ruby gems. This may take a few seconds...'
gem install tzinfo
gem install kramdown
gem install coderay
if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
   echo 'function radiation {
       local CURRENT_DIR=$(pwd)
       cd ~/radiation
       ruby bin/runner.rb
       cd $CURRENT_DIR
   }' >> ~/.zshrc
  source ~/.zshrc
elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]; then
   echo 'function radiation {
       local CURRENT_DIR=$(pwd)
       cd ~/radiation
       ruby bin/runner.rb
       cd $CURRENT_DIR
   }' >> ~/.bash_profile
   source ~/.bash_profile
fi
