package res

#aws_swf_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_swf_domain")
	arn?:         string
	description?: string
	id?:          string
	name?:        string
	name_prefix?: string
	tags?: [string]: string
	tags_all?: [string]: string
	workflow_execution_retention_period_in_days!: string
}
