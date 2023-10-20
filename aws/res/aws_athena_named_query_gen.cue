package res

#aws_athena_named_query: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_athena_named_query")
	database:     string
	description?: string
	id?:          string
	name:         string
	query:        string
	workgroup?:   string
}
