package res

#aws_networkmanager_transit_gateway_connect_peer_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_transit_gateway_connect_peer_association")
	device_id:                        string
	global_network_id:                string
	id?:                              string
	link_id?:                         string
	transit_gateway_connect_peer_arn: string
	timeouts?:                        #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
