package res

#aws_appconfig_deployment_strategy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_deployment_strategy")
	close({
		arn?:                            string
		deployment_duration_in_minutes!: number
		description?:                    string
		final_bake_time_in_minutes?:     number
		growth_factor!:                  number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		growth_type?:  string
		id?:           string
		name!:         string
		replicate_to!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
