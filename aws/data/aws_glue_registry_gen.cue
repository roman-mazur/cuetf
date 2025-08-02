package data

#aws_glue_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_registry")
	close({
		arn?:         string
		description?: string
		name!:        string
		region?:      string
	})
}
