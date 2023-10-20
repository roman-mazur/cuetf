package res

import "list"

#aws_globalaccelerator_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_globalaccelerator_listener")
	accelerator_arn:  string
	client_affinity?: string
	id?:              string
	protocol:         string
	port_range?:      #port_range | list.MaxItems(10) & [_, ...] & [...#port_range]
	timeouts?:        #timeouts

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
