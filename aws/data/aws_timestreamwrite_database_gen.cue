package data

#aws_timestreamwrite_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_timestreamwrite_database")
	close({
		arn?:               string
		created_time?:      string
		kms_key_id?:        string
		last_updated_time?: string
		name!:              string
		region?:            string
		table_count?:       number
	})
}
