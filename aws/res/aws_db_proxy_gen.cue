package res

#aws_db_proxy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_db_proxy")
	close({
		arn?: string
		auth?: matchN(1, [#auth, [...#auth]])
		debug_logging?:         bool
		default_auth_scheme?:   string
		endpoint?:              string
		endpoint_network_type?: string
		engine_family!:         string
		id?:                    string
		idle_client_timeout?:   number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		name!:        string
		timeouts?:    #timeouts
		require_tls?: bool
		role_arn!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_connection_network_type?: string
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
