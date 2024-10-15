package data

#github_repository_webhooks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository_webhooks")
	id?:         string
	repository!: string
	webhooks?: [...{
		active?: bool
		id?:     number
		name?:   string
		type?:   string
		url?:    string
	}]
}
