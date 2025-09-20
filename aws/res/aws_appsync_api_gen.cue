package res

#aws_appsync_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_api")
	close({
		api_arn?: string
		api_id?:  string
		dns?: [string]: string
		name!:          string
		owner_contact?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		event_config?: matchN(1, [#event_config, [...#event_config]])
		tags_all?: [string]: string
		waf_web_acl_arn?: string
		xray_enabled?:    bool
	})

	#event_config: close({
		auth_provider?: matchN(1, [_#defs."/$defs/event_config/$defs/auth_provider", [..._#defs."/$defs/event_config/$defs/auth_provider"]])
		connection_auth_mode?: matchN(1, [_#defs."/$defs/event_config/$defs/connection_auth_mode", [..._#defs."/$defs/event_config/$defs/connection_auth_mode"]])
		default_publish_auth_mode?: matchN(1, [_#defs."/$defs/event_config/$defs/default_publish_auth_mode", [..._#defs."/$defs/event_config/$defs/default_publish_auth_mode"]])
		default_subscribe_auth_mode?: matchN(1, [_#defs."/$defs/event_config/$defs/default_subscribe_auth_mode", [..._#defs."/$defs/event_config/$defs/default_subscribe_auth_mode"]])
		log_config?: matchN(1, [_#defs."/$defs/event_config/$defs/log_config", [..._#defs."/$defs/event_config/$defs/log_config"]])
	})

	_#defs: "/$defs/event_config/$defs/auth_provider": close({
		cognito_config?: matchN(1, [_#defs."/$defs/event_config/$defs/auth_provider/$defs/cognito_config", [..._#defs."/$defs/event_config/$defs/auth_provider/$defs/cognito_config"]])
		lambda_authorizer_config?: matchN(1, [_#defs."/$defs/event_config/$defs/auth_provider/$defs/lambda_authorizer_config", [..._#defs."/$defs/event_config/$defs/auth_provider/$defs/lambda_authorizer_config"]])
		openid_connect_config?: matchN(1, [_#defs."/$defs/event_config/$defs/auth_provider/$defs/openid_connect_config", [..._#defs."/$defs/event_config/$defs/auth_provider/$defs/openid_connect_config"]])
		auth_type!: string
	})

	_#defs: "/$defs/event_config/$defs/auth_provider/$defs/cognito_config": close({
		app_id_client_regex?: string
		aws_region!:          string
		user_pool_id!:        string
	})

	_#defs: "/$defs/event_config/$defs/auth_provider/$defs/lambda_authorizer_config": close({
		authorizer_result_ttl_in_seconds?: number
		authorizer_uri!:                   string
		identity_validation_expression?:   string
	})

	_#defs: "/$defs/event_config/$defs/auth_provider/$defs/openid_connect_config": close({
		auth_ttl?:  number
		client_id?: string
		iat_ttl?:   number
		issuer!:    string
	})

	_#defs: "/$defs/event_config/$defs/connection_auth_mode": close({
		auth_type!: string
	})

	_#defs: "/$defs/event_config/$defs/default_publish_auth_mode": close({
		auth_type!: string
	})

	_#defs: "/$defs/event_config/$defs/default_subscribe_auth_mode": close({
		auth_type!: string
	})

	_#defs: "/$defs/event_config/$defs/log_config": close({
		cloudwatch_logs_role_arn!: string
		log_level!:                string
	})
}
