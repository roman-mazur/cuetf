package res

import "list"

#aws_directory_service_shared_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_shared_directory")
	close({
		target?: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		directory_id!:        string
		id?:                  string
		method?:              string
		notes?:               string
		region?:              string
		shared_directory_id?: string
		timeouts?:            #timeouts
	})

	#target: close({
		id!:   string
		type?: string
	})

	#timeouts: close({
		delete?: string
	})
}
