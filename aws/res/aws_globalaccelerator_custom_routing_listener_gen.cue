package res

import "list"

#aws_globalaccelerator_custom_routing_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_globalaccelerator_custom_routing_listener")
	accelerator_arn!: string
	id?:              string
	port_range?: #port_range | list.MaxItems(10) & [_, ...] & [...#port_range]
	timeouts?: #timeouts

	#port_range: {
		from_port?: number
		to_port?:   number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
