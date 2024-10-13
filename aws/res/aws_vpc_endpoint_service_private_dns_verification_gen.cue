package res

#aws_vpc_endpoint_service_private_dns_verification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_service_private_dns_verification")
	service_id!:            string
	wait_for_verification?: bool
	timeouts?:              #timeouts

	#timeouts: create?: string
}
