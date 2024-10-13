package res

#aws_dax_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dax_parameter_group")
	description?: string
	id?:          string
	name!:        string
	parameters?: #parameters | [...#parameters]

	#parameters: {
		name!:  string
		value!: string
	}
}
