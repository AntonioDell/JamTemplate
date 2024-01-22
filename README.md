# Jam Template
Starting point to have automatical builds and releases to Itch.io on each commit for a GitHub hosted Godot project. 
Feel free to use and modify!
The main scene is only there to demonstrate, that "it just works"™️ when the build passes and is deployed.

## How to use
Most steps from [Snopek Games video tutorial](https://www.youtube.com/watch?v=4oUs4IV_Mj4&list=PLCBLMvLIundAOAiCvluBNuEA0-ea7_EDp&index=1) apply, but instead of GitLab we use GitHub.

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

### Setup Itch.io game site
- Enable "SharedArrayBuffer support"
-  After first successfull upload: configure uploaded files

### Jam submission
Be sure to deactivate GitHub actions in the repo after the submission deadline while the rating period is in session.
Otherwise you risk violating submission guidelines like "no changes after submission".


## Credit
Based on [Godot-CI Github Action](https://github.com/abarichello/godot-ci) and pipeline adjustements from [Bloham](https://github.com/abarichello/godot-ci/issues/123). 
Video tutorial from [Snopek Games](https://www.youtube.com/watch?v=4oUs4IV_Mj4&list=PLCBLMvLIundAOAiCvluBNuEA0-ea7_EDp&index=1) was very helpful.

## License
CC0 1.0 Universal
