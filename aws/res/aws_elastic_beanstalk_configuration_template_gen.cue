package res

#aws_elastic_beanstalk_configuration_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_configuration_template")
	close({
		application!: string
		setting?: matchN(1, [#setting, [...#setting]])
		description?:         string
		environment_id?:      string
		id?:                  string
		name!:                string
		region?:              string
		solution_stack_name?: string
	})

	#setting: close({
		name!:      string
		namespace!: string
		resource?:  string
		value!:     string
	})
}
