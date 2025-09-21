package github

//go:generate curl -fL "https://raw.githubusercontent.com/SchemaStore/schemastore/refs/heads/master/src/schemas/json/github-workflow.json" -o schema.json
//go:generate cue import -f schema.json -p "github" -l "#Workflow:"

//go:generate curl -fL "https://json.schemastore.org/dependabot-2.0.json" -o dependabot.json
//go:generate cue import -f dependabot.json -p github -l "#Dependabot:"
