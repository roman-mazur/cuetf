package res

#aws_apprunner_auto_scaling_configuration_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_auto_scaling_configuration_version")
	close({
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
		region?:                              string
		status?:                              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
