package res

#aws_vpc_endpoint_connection_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_connection_accepter")
	id?:                      string
	vpc_endpoint_id!:         string
	vpc_endpoint_service_id!: string
	vpc_endpoint_state?:      string
}
