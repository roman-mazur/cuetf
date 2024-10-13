package res

import "list"

#aws_elasticache_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_user")
	access_string!:        string
	arn?:                  string
	engine!:               string
	id?:                   string
	no_password_required?: bool
	passwords?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	user_id!:   string
	user_name!: string
	authentication_mode?: #authentication_mode | list.MaxItems(1) & [...#authentication_mode]
	timeouts?: #timeouts

	#authentication_mode: {
		password_count?: number
		passwords?: [...string]
		type!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
