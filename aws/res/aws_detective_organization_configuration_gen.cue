package res

#aws_detective_organization_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_detective_organization_configuration")
	auto_enable!: bool
	graph_arn!:   string
	id?:          string
}
