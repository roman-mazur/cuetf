package res

#aws_apprunner_auto_scaling_configuration_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apprunner_auto_scaling_configuration_version")
	arn?:                                 string
	auto_scaling_configuration_name!:     string
	auto_scaling_configuration_revision?: number
	has_associated_service?:              bool
	id?:                                  string
	is_default?:                          bool
	latest?:                              bool
	max_concurrency?:                     number
	max_size?:                            number
	min_size?:                            number
	status?:                              string
	tags?: [string]:     string
	tags_all?: [string]: string
}
