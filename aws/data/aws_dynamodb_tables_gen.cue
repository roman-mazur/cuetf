package data

#aws_dynamodb_tables: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_tables")
	close({
		names?: [...string]
		region?: string
	})
}
