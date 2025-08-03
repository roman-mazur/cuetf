package res

#aws_dax_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dax_subnet_group")
	close({
		description?: string
		id?:          string
		name!:        string
		region?:      string
		subnet_ids!: [...string]
		vpc_id?: string
	})
}
