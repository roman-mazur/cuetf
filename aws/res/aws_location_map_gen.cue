package res

import "list"

#aws_location_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_map")
	close({
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [_, ...] & [...#configuration]])
		create_time?: string
		description?: string
		id?:          string
		map_arn?:     string
		map_name!:    string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
	})

	#configuration: close({
		style!: string
	})
}
