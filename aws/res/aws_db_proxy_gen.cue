package res

#aws_db_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_db_proxy")
	close({
		arn?:           string
		debug_logging?: bool
		auth?: matchN(1, [#auth, [_, ...] & [...#auth]])
		timeouts?:            #timeouts
		endpoint?:            string
		engine_family!:       string
		id?:                  string
		idle_client_timeout?: number
		name!:                string
		region?:              string
		require_tls?:         bool
		role_arn!:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_security_group_ids?: [...string]
		vpc_subnet_ids!: [...string]
	})

	#auth: close({
		auth_scheme?:               string
		client_password_auth_type?: string
		description?:               string
		iam_auth?:                  string
		secret_arn?:                string
		username?:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
