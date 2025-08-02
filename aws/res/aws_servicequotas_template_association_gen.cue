package res

#aws_servicequotas_template_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicequotas_template_association")
	close({
		id?:           string
		region?:       string
		skip_destroy?: bool
		status?:       string
	})
}
