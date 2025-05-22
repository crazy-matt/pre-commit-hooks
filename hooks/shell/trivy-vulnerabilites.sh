#!/usr/bin/env bash
set -e

main() {
  if [[ -z "$(command -v trivy)" ]]; then
    echo "\033[1;37m\033[41mYou should install 'trivy' first to be able to use its hook.\033[0m"
    exit 0
  fi

  _run_hook
}

_run_hook() {
  local _repo_root=$(git rev-parse --show-toplevel)
  local _findings=$(trivy -q fs --severity HIGH,CRITICAL --ignore-unfixed --security-checks vuln "${_repo_root}")
  if [[ -n "${_findings}" ]]; then
    echo "${_findings}"
    exit 1
  fi
}

[[ ${BASH_SOURCE[0]} != "$0" ]] || main "$@"
