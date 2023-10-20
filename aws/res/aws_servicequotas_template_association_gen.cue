package res

#aws_servicequotas_template_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicequotas_template_association")
	id?:           string
	skip_destroy?: bool
	status?:       string
}
