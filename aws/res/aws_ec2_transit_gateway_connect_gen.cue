package res

#aws_ec2_transit_gateway_connect: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_transit_gateway_connect")
	close({
		timeouts?: #timeouts
		id?:       string
		protocol?: string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_default_route_table_association?: bool
		transit_gateway_default_route_table_propagation?: bool
		transit_gateway_id!:                              string
		transport_attachment_id!:                         string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
