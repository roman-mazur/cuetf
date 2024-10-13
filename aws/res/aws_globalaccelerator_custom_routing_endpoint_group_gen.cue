package res

#aws_globalaccelerator_custom_routing_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_globalaccelerator_custom_routing_endpoint_group")
	arn?:                   string
	endpoint_group_region?: string
	id?:                    string
	listener_arn!:          string
	destination_configuration?: #destination_configuration | [_, ...] & [...#destination_configuration]
	endpoint_configuration?: #endpoint_configuration | [...#endpoint_configuration]
	timeouts?: #timeouts

	#destination_configuration: {
		from_port!: number
		protocols!: [...string]
		to_port!: number
	}

	#endpoint_configuration: endpoint_id?: string

	#timeouts: {
		create?: string
		delete?: string
	}
}
