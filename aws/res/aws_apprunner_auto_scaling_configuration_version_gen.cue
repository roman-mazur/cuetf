package res

#aws_apprunner_auto_scaling_configuration_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_apprunner_auto_scaling_configuration_version")
	close({
		arn?:                                 string
		auto_scaling_configuration_name!:     string
		auto_scaling_configuration_revision?: number
		has_associated_service?:              bool
		id?:                                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		is_default?:      bool
		latest?:          bool
		max_concurrency?: number
		max_size?:        number
		min_size?:        number
		status?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
