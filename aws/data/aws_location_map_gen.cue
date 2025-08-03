package data

#aws_location_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_map")
	close({
		configuration?: [...close({
			style?: string
		})]
		create_time?: string
		description?: string
		id?:          string
		map_arn?:     string
		map_name!:    string
		region?:      string
		tags?: [string]: string
		update_time?: string
	})
}
