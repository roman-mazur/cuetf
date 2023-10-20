package data

#aws_elasticache_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elasticache_user")
	access_string?:        string
	engine?:               string
	id?:                   string
	no_password_required?: bool
	passwords?: [...string]
	user_id:              string
	user_name?:           string
	authentication_mode?: #authentication_mode | [...#authentication_mode]

	#authentication_mode: {
		password_count?: number
		type?:           string
	}
}
