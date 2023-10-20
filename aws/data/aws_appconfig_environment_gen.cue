package data

#aws_appconfig_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appconfig_environment")
	application_id: string
	arn?:           string
	description?:   string
	environment_id: string
	id?:            string
	monitor?: [...{
		alarm_arn?:      string
		alarm_role_arn?: string
	}]
	name?:  string
	state?: string
	tags?: [string]: string
}
