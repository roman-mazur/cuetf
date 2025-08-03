package res

#aws_redshift_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_subnet_group")
	close({
		arn?:         string
		description?: string
		id?:          string
		name!:        string
		region?:      string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
