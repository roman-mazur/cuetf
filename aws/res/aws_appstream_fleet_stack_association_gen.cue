package res

#aws_appstream_fleet_stack_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appstream_fleet_stack_association")
	close({
		fleet_name!: string
		id?:         string
		region?:     string
		stack_name!: string
	})
}
