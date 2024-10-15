package res

#aws_redshift_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_parameter_group")
	arn?:         string
	description?: string
	family!:      string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	parameter?: #parameter | [...#parameter]

	#parameter: {
		name!:  string
		value!: string
	}
}
