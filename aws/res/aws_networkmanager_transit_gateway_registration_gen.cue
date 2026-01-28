package res

#aws_networkmanager_transit_gateway_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_transit_gateway_registration")
	close({
		timeouts?:            #timeouts
		global_network_id!:   string
		id?:                  string
		transit_gateway_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
