package res

#aws_vpc_dhcp_options_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_dhcp_options_association")
	dhcp_options_id!: string
	id?:              string
	vpc_id!:          string
}
