package res

import "list"

#aws_globalaccelerator_custom_routing_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_globalaccelerator_custom_routing_listener")
	close({
		port_range!: matchN(1, [#port_range, list.MaxItems(10) & [_, ...] & [...#port_range]])
		timeouts?:        #timeouts
		accelerator_arn!: string
		arn?:             string
		id?:              string
	})

	#port_range: close({
		from_port?: number
		to_port?:   number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
