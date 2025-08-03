package res

#aws_redshift_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_parameter_group")
	close({
		arn?: string
		parameter?: matchN(1, [#parameter, [...#parameter]])
		description?: string
		family!:      string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#parameter: close({
		name!:  string
		value!: string
	})
}
