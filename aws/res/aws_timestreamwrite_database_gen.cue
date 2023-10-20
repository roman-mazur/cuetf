package res

#aws_timestreamwrite_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_timestreamwrite_database")
	arn?:          string
	database_name: string
	id?:           string
	kms_key_id?:   string
	table_count?:  number
	tags?: [string]: string
	tags_all?: [string]: string
}
