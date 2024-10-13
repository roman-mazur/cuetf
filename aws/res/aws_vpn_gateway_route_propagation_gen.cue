package res

#aws_vpn_gateway_route_propagation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpn_gateway_route_propagation")
	id?:             string
	route_table_id!: string
	vpn_gateway_id!: string
	timeouts?:       #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
