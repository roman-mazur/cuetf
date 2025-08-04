package data

#github_rest_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_rest_api")
	close({
		body?:     string
		code?:     number
		endpoint!: string
		headers?:  string
		id?:       string
		status?:   string
	})
}
