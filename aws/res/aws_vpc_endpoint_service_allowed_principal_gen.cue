package res

#aws_vpc_endpoint_service_allowed_principal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_service_allowed_principal")
	id?:                      string
	principal_arn!:           string
	vpc_endpoint_service_id!: string
}
