package res

#aws_vpn_connection_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpn_connection_route")
	destination_cidr_block: string
	id?:                    string
	vpn_connection_id:      string
}
