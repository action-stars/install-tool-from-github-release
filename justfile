set windows-shell := ["pwsh", "-NoLogo", "-NoProfile", "-Command"]

default:
    just --list

actionlint:
    actionlint -shellcheck=shellcheck

mdfmt:
    rumdl fmt --fix .

mdlint:
    rumdl check .

shellcheck:
    {{ if os_family() == "windows" { "Get-ChildItem -Recurse -File | Where-Object { $_.Extension -eq '.sh' } | ForEach-Object { & shellcheck $_.FullName }" } else { "find . -type f -name '*.sh' | xargs --no-run-if-empty -n1 shellcheck" } }}

yamlfmt:
    yamlfmt -continue_on_error .

docs:
    auto-doc --colMaxWords 100 --repository action-stars/install-tool-from-github-release --filename action.yml
