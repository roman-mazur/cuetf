package res

#aws_ec2_transit_gateway_default_route_table_propagation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_default_route_table_propagation")
	id?:                              string
	original_default_route_table_id?: string
	transit_gateway_id!:              string
	transit_gateway_route_table_id!:  string
	timeouts?:                        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
