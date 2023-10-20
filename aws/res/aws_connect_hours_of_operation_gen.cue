package res

import "list"

#aws_connect_hours_of_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_hours_of_operation")
	arn?:                   string
	description?:           string
	hours_of_operation_id?: string
	id?:                    string
	instance_id:            string
	name:                   string
	tags?: [string]: string
	tags_all?: [string]: string
	time_zone: string
	config?:   #config | [_, ...] & [...#config]

	#config: {
		day:         string
		end_time?:   #config.#end_time | list.MaxItems(1) & [_, ...] & [...#config.#end_time]
		start_time?: #config.#start_time | list.MaxItems(1) & [_, ...] & [...#config.#start_time]

		#end_time: {
			hours:   number
			minutes: number
		}

		#start_time: {
			hours:   number
			minutes: number
		}
	}
}
