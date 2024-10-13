package res

import "list"

#aws_directory_service_shared_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_shared_directory")
	directory_id!:        string
	id?:                  string
	method?:              string
	notes?:               string
	shared_directory_id?: string
	target?: #target | list.MaxItems(1) & [_, ...] & [...#target]
	timeouts?: #timeouts

	#target: {
		id!:   string
		type?: string
	}

	#timeouts: delete?: string
}
