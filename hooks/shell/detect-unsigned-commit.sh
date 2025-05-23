#!/usr/bin/env bash

if [[ "$(git config --get commit.gpgsign)" != 'true' ]]; then
  echo '⚠️  No GPG signature setup!'
  exit 1
fi

exit 0
