package data

#github_organization_webhooks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_webhooks")
	id?: string
	webhooks?: [...{
		active?: bool
		id?:     number
		name?:   string
		type?:   string
		url?:    string
	}]
}
