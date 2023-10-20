package res

#aws_dynamodb_table_replica: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dynamodb_table_replica")
	arn?:                    string
	global_table_arn:        string
	id?:                     string
	kms_key_arn?:            string
	point_in_time_recovery?: bool
	table_class_override?:   string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
