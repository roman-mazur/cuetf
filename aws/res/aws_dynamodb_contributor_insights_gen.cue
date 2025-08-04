package res

#aws_dynamodb_contributor_insights: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_contributor_insights")
	close({
		timeouts?:   #timeouts
		id?:         string
		index_name?: string
		region?:     string
		table_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
