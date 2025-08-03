package res

#aws_vpc_endpoint_service_allowed_principal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_service_allowed_principal")
	close({
		id?:                      string
		principal_arn!:           string
		region?:                  string
		vpc_endpoint_service_id!: string
	})
}
