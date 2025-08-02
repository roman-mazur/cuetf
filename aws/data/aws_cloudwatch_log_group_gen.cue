package data

#aws_cloudwatch_log_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_group")
	close({
		arn?:               string
		creation_time?:     number
		id?:                string
		kms_key_id?:        string
		log_group_class?:   string
		name!:              string
		region?:            string
		retention_in_days?: number
		tags?: [string]: string
	})
}
