package data

#aws_servicequotas_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicequotas_service")
	id?:           string
	service_code?: string
	service_name!: string
}
