package res

#aws_appconfig_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appconfig_deployment")
	application_id!:           string
	arn?:                      string
	configuration_profile_id!: string
	configuration_version!:    string
	deployment_number?:        number
	deployment_strategy_id!:   string
	description?:              string
	environment_id!:           string
	id?:                       string
	kms_key_arn?:              string
	kms_key_identifier?:       string
	state?:                    string
	tags?: [string]:     string
	tags_all?: [string]: string
}
