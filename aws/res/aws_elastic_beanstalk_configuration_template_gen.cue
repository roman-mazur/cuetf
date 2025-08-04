package res

#aws_elastic_beanstalk_configuration_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_configuration_template")
	close({
		application!: string
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		environment_id?:      string
		id?:                  string
		name!:                string
		solution_stack_name?: string
		setting?: matchN(1, [#setting, [...#setting]])
	})

	#setting: close({
		name!:      string
		namespace!: string
		resource?:  string
		value!:     string
	})
}
