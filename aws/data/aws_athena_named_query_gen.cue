package data

#aws_athena_named_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_athena_named_query")
	close({
		database?:    string
		description?: string
		id?:          string
		name!:        string
		querystring?: string
		region?:      string
		workgroup?:   string
	})
}
