package res

#aws_db_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_parameter_group")
	close({
		arn?:         string
		description?: string
		family!:      string
		id?:          string
		name?:        string
		name_prefix?: string
		region?:      string
		parameter?: matchN(1, [#parameter, [...#parameter]])
		skip_destroy?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#parameter: close({
		apply_method?: string
		name!:         string
		value!:        string
	})
}
