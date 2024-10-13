package res

#aws_networkmanager_customer_gateway_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_customer_gateway_association")
	customer_gateway_arn!: string
	device_id!:            string
	global_network_id!:    string
	id?:                   string
	link_id?:              string
	timeouts?:             #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
