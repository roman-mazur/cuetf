package res

#aws_dynamodb_table_replica: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dynamodb_table_replica")
	close({
		arn?:                         string
		deletion_protection_enabled?: bool
		global_table_arn!:            string
		id?:                          string
		kms_key_arn?:                 string
		point_in_time_recovery?:      bool
		region?:                      string
		timeouts?:                    #timeouts
		table_class_override?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
