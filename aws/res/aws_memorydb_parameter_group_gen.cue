package res

#aws_memorydb_parameter_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_memorydb_parameter_group")
	close({
		arn?:         string
		description?: string
		family!:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		id?:          string
		name?:        string
		name_prefix?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		parameter?: matchN(1, [#parameter, [...#parameter]])
	})

	#parameter: close({
		name!:  string
		value!: string
	})
}
