package res

#aws_networkmanager_customer_gateway_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_customer_gateway_association")
	close({
		customer_gateway_arn!: string
		timeouts?:             #timeouts
		device_id!:            string
		global_network_id!:    string
		id?:                   string
		link_id?:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
