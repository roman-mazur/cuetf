package res

#aws_dynamodb_table_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_table_item")
	hash_key!:   string
	id?:         string
	item!:       string
	range_key?:  string
	table_name!: string
}
