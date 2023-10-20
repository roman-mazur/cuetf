package res

#aws_dynamodb_contributor_insights: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_contributor_insights")
	id?:         string
	index_name?: string
	table_name:  string
	timeouts?:   #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
