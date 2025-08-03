package res

#aws_macie2_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_organization_configuration")
	close({
		auto_enable!: bool
		region?:      string
	})
}
