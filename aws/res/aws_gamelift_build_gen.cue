package res

import "list"

#aws_gamelift_build: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_gamelift_build")
	arn?:             string
	id?:              string
	name:             string
	operating_system: string
	tags?: [string]: string
	tags_all?: [string]: string
	version?:          string
	storage_location?: #storage_location | list.MaxItems(1) & [_, ...] & [...#storage_location]

	#storage_location: {
		bucket:          string
		key:             string
		object_version?: string
		role_arn:        string
	}
}
