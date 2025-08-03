package res

#aws_vpn_gateway_route_propagation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpn_gateway_route_propagation")
	close({
		id?:             string
		region?:         string
		route_table_id!: string
		vpn_gateway_id!: string
		timeouts?:       #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
