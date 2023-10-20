package res

import "list"

#aws_location_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_location_map")
	create_time?: string
	description?: string
	id?:          string
	map_arn?:     string
	map_name:     string
	tags?: [string]: string
	tags_all?: [string]: string
	update_time?:   string
	configuration?: #configuration | list.MaxItems(1) & [_, ...] & [...#configuration]

	#configuration: style: string
}
