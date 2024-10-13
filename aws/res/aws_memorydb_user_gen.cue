package res

import "list"

#aws_memorydb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_memorydb_user")
	access_string!:          string
	arn?:                    string
	id?:                     string
	minimum_engine_version?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	user_name!: string
	authentication_mode?: #authentication_mode | list.MaxItems(1) & [_, ...] & [...#authentication_mode]

	#authentication_mode: {
		password_count?: number
		passwords?: [...string]
		type!: string
	}
}
