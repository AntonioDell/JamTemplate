# Jam Template
Feel free to use this as starting point for your CI pipeline.

## How to use

### Setup Github Repo
Setup repository secret ([Github docs](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions#creating-secrets-for-a-repository)):
- Name: BUTLER_API_KEY, Value: API key from Itch.io 

### Setup Godot project
Exports:
- "Windows Desktop"
- "Linux/X11"
- "Web"

### Change [workflow file](.github/workflows/godot-ci.yml)
Environment variables (env):
- EXPORT_NAME: file name for exported files
- ITCHIO_NAME: In the form user/game, see also [Itch.io docs](https://itch.io/docs/butler/pushing.html)

## Credit
Based on [Godot-CI Github Action](https://github.com/abarichello/godot-ci) and pipeline adjustements from [Bloham](https://github.com/abarichello/godot-ci/issues/123). 