package res

#aws_appconfig_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appconfig_application")
	arn?:         string
	description?: string
	id?:          string
	name:         string
	tags?: [string]: string
	tags_all?: [string]: string
}
