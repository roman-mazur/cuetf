package res

#aws_networkmanager_transit_gateway_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_transit_gateway_registration")
	global_network_id!:   string
	id?:                  string
	transit_gateway_arn!: string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
