package res

#aws_shield_protection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_shield_protection")
	close({
		arn?:          string
		id?:           string
		name!:         string
		resource_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
