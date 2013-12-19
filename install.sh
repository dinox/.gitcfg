#!/bin/sh
if [ ! -f "$HOME/.gitconfig" ] ; then
    ln -s ~/.gitconfig .gitconfig
fi

if [[ ! -s "$HOME/.bash_profile" && -s "$HOME/.profile" ]] ; then
  profile_file="$HOME/.profile"
else
  profile_file="$HOME/.bash_profile"
fi

if ! grep -q 'git-scripts.bash' "${profile_file}" ; then
  echo "source \"$HOME/.gitcfg/.git-scripts.bash\"" >> "${profile_file}"
fi
