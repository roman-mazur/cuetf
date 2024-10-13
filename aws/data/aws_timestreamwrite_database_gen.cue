package data

#aws_timestreamwrite_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_timestreamwrite_database")
	arn?:               string
	created_time?:      string
	kms_key_id?:        string
	last_updated_time?: string
	name!:              string
	table_count?:       number
}
