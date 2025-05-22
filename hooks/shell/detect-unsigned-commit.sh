#!/usr/bin/env bash

signingKey=$(git config --global --get user.signingkey)

if [[ -z $signingKey ]]; then
  echo 'Commit unsigned !'
  exit 1
fi

exit 0
