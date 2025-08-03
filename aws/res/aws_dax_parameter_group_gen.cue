package res

#aws_dax_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dax_parameter_group")
	close({
		description?: string
		id?:          string
		name!:        string
		region?:      string
		parameters?: matchN(1, [#parameters, [...#parameters]])
	})

	#parameters: close({
		name!:  string
		value!: string
	})
}
