package res

import "list"

#aws_autoscaling_traffic_source_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_traffic_source_attachment")
	autoscaling_group_name!: string
	id?:                     string
	timeouts?:               #timeouts
	traffic_source?: #traffic_source | list.MaxItems(1) & [...#traffic_source]

	#timeouts: {
		create?: string
		delete?: string
	}

	#traffic_source: {
		identifier!: string
		type!:       string
	}
}
