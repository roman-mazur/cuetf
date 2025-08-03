package res

import "list"

#aws_autoscaling_traffic_source_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_autoscaling_traffic_source_attachment")
	close({
		autoscaling_group_name!: string
		id?:                     string
		region?:                 string
		timeouts?:               #timeouts
		traffic_source?: matchN(1, [#traffic_source, list.MaxItems(1) & [...#traffic_source]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	#traffic_source: close({
		identifier!: string
		type!:       string
	})
}
