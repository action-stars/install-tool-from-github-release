set windows-shell := ["pwsh", "-NoLogo", "-Command"]

default:
  just --list

docs:
  auto-doc --colMaxWords 100 --repository action-stars/install-tool-from-github-release --filename .\action.yml
