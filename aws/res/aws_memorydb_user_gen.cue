package res

import "list"

#aws_memorydb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_memorydb_user")
	close({
		access_string!: string
		authentication_mode?: matchN(1, [#authentication_mode, list.MaxItems(1) & [_, ...] & [...#authentication_mode]])
		arn?:                    string
		id?:                     string
		minimum_engine_version?: string
		region?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		user_name!: string
	})

	#authentication_mode: close({
		password_count?: number
		passwords?: [...string]
		type!: string
	})
}
