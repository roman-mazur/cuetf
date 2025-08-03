package res

#aws_globalaccelerator_custom_routing_endpoint_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_globalaccelerator_custom_routing_endpoint_group")
	close({
		arn?:                   string
		endpoint_group_region?: string
		id?:                    string
		listener_arn!:          string
		destination_configuration?: matchN(1, [#destination_configuration, [_, ...] & [...#destination_configuration]])
		endpoint_configuration?: matchN(1, [#endpoint_configuration, [...#endpoint_configuration]])
		timeouts?: #timeouts
	})

	#destination_configuration: close({
		from_port!: number
		protocols!: [...string]
		to_port!: number
	})

	#endpoint_configuration: close({
		endpoint_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
