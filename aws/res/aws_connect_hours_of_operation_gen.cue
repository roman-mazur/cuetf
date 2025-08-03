package res

import "list"

#aws_connect_hours_of_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_hours_of_operation")
	close({
		arn?: string
		config?: matchN(1, [#config, [_, ...] & [...#config]])
		description?:           string
		hours_of_operation_id?: string
		id?:                    string
		instance_id!:           string
		name!:                  string
		region?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
		time_zone!: string
	})

	#config: close({
		day!: string
		end_time?: matchN(1, [_#defs."/$defs/config/$defs/end_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/end_time"]])
		start_time?: matchN(1, [_#defs."/$defs/config/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/start_time"]])
	})

	_#defs: "/$defs/config/$defs/end_time": close({
		hours!:   number
		minutes!: number
	})

	_#defs: "/$defs/config/$defs/start_time": close({
		hours!:   number
		minutes!: number
	})
}
