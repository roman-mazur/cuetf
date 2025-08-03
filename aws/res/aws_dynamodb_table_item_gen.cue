package res

#aws_dynamodb_table_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_table_item")
	close({
		hash_key!:   string
		id?:         string
		item!:       string
		range_key?:  string
		region?:     string
		table_name!: string
	})
}
