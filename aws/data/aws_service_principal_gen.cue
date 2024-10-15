package data

#aws_service_principal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service_principal")
	id?:           string
	name?:         string
	region?:       string
	service_name!: string
	suffix?:       string
}
