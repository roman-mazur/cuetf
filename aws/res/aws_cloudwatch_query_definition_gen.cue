package res

#aws_cloudwatch_query_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_query_definition")
	id?: string
	log_group_names?: [...string]
	name:                 string
	query_definition_id?: string
	query_string:         string
}
