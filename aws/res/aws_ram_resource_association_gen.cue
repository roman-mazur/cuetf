package res

#aws_ram_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ram_resource_association")
	close({
		id?:                 string
		region?:             string
		resource_arn!:       string
		resource_share_arn!: string
	})
}
