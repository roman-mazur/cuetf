package res

#aws_dynamodb_global_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_global_table")
	arn?:  string
	id?:   string
	name!: string
	replica?: #replica | [_, ...] & [...#replica]
	timeouts?: #timeouts

	#replica: region_name!: string

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
