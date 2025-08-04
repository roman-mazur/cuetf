package res

#aws_dynamodb_global_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_global_table")
	close({
		replica?: matchN(1, [#replica, [_, ...] & [...#replica]])
		arn?:      string
		id?:       string
		name!:     string
		region?:   string
		timeouts?: #timeouts
	})

	#replica: close({
		region_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
