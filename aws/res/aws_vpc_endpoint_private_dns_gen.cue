package res

#aws_vpc_endpoint_private_dns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_private_dns")
	private_dns_enabled!: bool
	vpc_endpoint_id!:     string
}
