package res

#aws_appconfig_hosted_configuration_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appconfig_hosted_configuration_version")
	application_id!:           string
	arn?:                      string
	configuration_profile_id!: string
	content!:                  string
	content_type!:             string
	description?:              string
	id?:                       string
	version_number?:           number
}
