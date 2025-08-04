package res

#aws_ec2_transit_gateway_default_route_table_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_default_route_table_association")
	close({
		timeouts?:                        #timeouts
		id?:                              string
		original_default_route_table_id?: string
		region?:                          string
		transit_gateway_id!:              string
		transit_gateway_route_table_id!:  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
