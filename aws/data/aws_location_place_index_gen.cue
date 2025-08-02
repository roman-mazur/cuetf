package data

#aws_location_place_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_place_index")
	close({
		create_time?: string
		data_source?: string
		data_source_configuration?: [...close({
			intended_use?: string
		})]
		description?: string
		id?:          string
		index_arn?:   string
		index_name!:  string
		region?:      string
		tags?: [string]: string
		update_time?: string
	})
}
