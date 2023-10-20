package data

#aws_location_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_location_map")
	configuration?: [...{
		style?: string
	}]
	create_time?: string
	description?: string
	id?:          string
	map_arn?:     string
	map_name:     string
	tags?: [string]: string
	update_time?: string
}
