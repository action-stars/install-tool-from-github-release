set windows-shell := ["pwsh", "-NoLogo", "-Command"]

default:
  just --list

actionlint:
  actionlint -shellcheck=shellcheck

markdownlint:
  npm exec markdownlint-cli2 --yes -- --fix "*.{md,markdown}"

shellcheck:
  {{ if os_family() == "windows" { "Get-ChildItem -Recurse -File | Where-Object { $_.Extension -eq '.sh' } | ForEach-Object { & shellcheck $_.FullName }" } else { "find . -type f -name '*.sh' | xargs --no-run-if-empty -n1 shellcheck" } }}

yamlfmt:
  yamlfmt -continue_on_error

docs:
  auto-doc --colMaxWords 100 --repository lexisnexis-rba/rish-gh-action-setup-tf --filename action.yml
