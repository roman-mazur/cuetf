package data

#aws_cloudwatch_log_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_group")
	arn?:               string
	creation_time?:     number
	id?:                string
	kms_key_id?:        string
	log_group_class?:   string
	name!:              string
	retention_in_days?: number
	tags?: [string]: string
}
