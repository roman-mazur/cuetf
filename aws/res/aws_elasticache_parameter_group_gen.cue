package res

#aws_elasticache_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_parameter_group")
	close({
		parameter?: matchN(1, [#parameter, [...#parameter]])
		arn?:         string
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
