package data

#aws_cloudwatch_log_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cloudwatch_log_groups")
	arns?: [...string]
	id?:                    string
	log_group_name_prefix?: string
	log_group_names?: [...string]
}
