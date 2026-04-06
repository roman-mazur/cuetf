package data

#github_repository_webhooks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository_webhooks")
	close({
		id?:         string
		repository!: string
		webhooks?: [...close({
			active?: bool
			id?:     number
			name?:   string
			type?:   string
			url?:    string
		})]
	})
}
