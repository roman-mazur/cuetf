package data

#aws_dynamodb_table_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_table_item")
	expression_attribute_names?: [string]: string
	id?:                    string
	item?:                  string
	key!:                   string
	projection_expression?: string
	table_name!:            string
}
