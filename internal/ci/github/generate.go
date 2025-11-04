package github

//go:generate curl -fL "https://json.schemastore.org/dependabot-2.0.json" -o dependabot.json
//go:generate cue import -f dependabot.json -p github -l "#Dependabot:"
