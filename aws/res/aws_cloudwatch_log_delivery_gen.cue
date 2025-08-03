package res

#aws_cloudwatch_log_delivery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_delivery")
	close({
		arn?:                      string
		delivery_destination_arn!: string
		delivery_source_name!:     string
		field_delimiter?:          string
		id?:                       string
		record_fields?: [...string]
		region?: string
		s3_delivery_configuration?: [...close({
			enable_hive_compatible_path?: bool
			suffix_path?:                 string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
