package data

#aws_elasticache_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elasticache_user")
	close({
		authentication_mode?: matchN(1, [#authentication_mode, [...#authentication_mode]])
		access_string?:        string
		engine?:               string
		id?:                   string
		no_password_required?: bool
		passwords?: [...string]
		region?:    string
		user_id!:   string
		user_name?: string
	})

	#authentication_mode: close({
		password_count?: number
		type?:           string
	})
}
