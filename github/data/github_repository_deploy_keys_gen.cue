package data

#github_repository_deploy_keys: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_deploy_keys")
	id?: string
	keys?: [...{
		id?:       number
		key?:      string
		title?:    string
		verified?: bool
	}]
	repository!: string
}
