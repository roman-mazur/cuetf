package res

#aws_elastic_beanstalk_configuration_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_configuration_template")
	application!:         string
	description?:         string
	environment_id?:      string
	id?:                  string
	name!:                string
	solution_stack_name?: string
	setting?: #setting | [...#setting]

	#setting: {
		name!:      string
		namespace!: string
		resource?:  string
		value!:     string
	}
}
