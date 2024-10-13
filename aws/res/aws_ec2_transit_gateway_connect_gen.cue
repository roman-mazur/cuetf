package res

#aws_ec2_transit_gateway_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_connect")
	id?:       string
	protocol?: string
	tags?: [string]: string
	tags_all?: [string]: string
	transit_gateway_default_route_table_association?: bool
	transit_gateway_default_route_table_propagation?: bool
	transit_gateway_id!:                              string
	transport_attachment_id!:                         string
	timeouts?:                                        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
