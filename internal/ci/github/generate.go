package github

//go:generate curl -fL "https://raw.githubusercontent.com/SchemaStore/schemastore/refs/heads/master/src/schemas/json/github-workflow.json" -o schema.json
//go:generate cue import -f schema.json -p "github" -l "#Workflow:"
