#!/usr/bin/env bash

if [[ "$(git config --get commit.gpgsign)" != 'true' ]]; then
  echo '⚠️  No GPG signing config detected!'
  exit 1
fi

exit 0
