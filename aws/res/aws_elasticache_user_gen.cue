package res

import "list"

#aws_elasticache_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_user")
	close({
		access_string!: string
		arn?:           string
		authentication_mode?: matchN(1, [#authentication_mode, list.MaxItems(1) & [...#authentication_mode]])
		engine!:               string
		id?:                   string
		no_password_required?: bool
		passwords?: [...string]
		region?:   string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		user_id!:   string
		user_name!: string
	})

	#authentication_mode: close({
		password_count?: number
		passwords?: [...string]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
