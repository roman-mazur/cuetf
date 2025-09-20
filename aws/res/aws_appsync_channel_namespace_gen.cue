package res

#aws_appsync_channel_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_channel_namespace")
	close({
		api_id!:                string
		channel_namespace_arn?: string
		code_handlers?:         string
		name!:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		handler_configs?: matchN(1, [#handler_configs, [...#handler_configs]])
		tags?: [string]:     string
		tags_all?: [string]: string
		publish_auth_mode?: matchN(1, [#publish_auth_mode, [...#publish_auth_mode]])
		subscribe_auth_mode?: matchN(1, [#subscribe_auth_mode, [...#subscribe_auth_mode]])
	})

	#handler_configs: close({
		on_publish?: matchN(1, [_#defs."/$defs/handler_configs/$defs/on_publish", [..._#defs."/$defs/handler_configs/$defs/on_publish"]])
		on_subscribe?: matchN(1, [_#defs."/$defs/handler_configs/$defs/on_subscribe", [..._#defs."/$defs/handler_configs/$defs/on_subscribe"]])
	})

	#publish_auth_mode: close({
		auth_type!: string
	})

	#subscribe_auth_mode: close({
		auth_type!: string
	})

	_#defs: "/$defs/handler_configs/$defs/on_publish": close({
		integration?: matchN(1, [_#defs."/$defs/handler_configs/$defs/on_publish/$defs/integration", [..._#defs."/$defs/handler_configs/$defs/on_publish/$defs/integration"]])
		behavior!: string
	})

	_#defs: "/$defs/handler_configs/$defs/on_publish/$defs/integration": close({
		lambda_config?: matchN(1, [_#defs."/$defs/handler_configs/$defs/on_publish/$defs/integration/$defs/lambda_config", [..._#defs."/$defs/handler_configs/$defs/on_publish/$defs/integration/$defs/lambda_config"]])
		data_source_name!: string
	})

	_#defs: "/$defs/handler_configs/$defs/on_publish/$defs/integration/$defs/lambda_config": close({
		invoke_type?: string
	})

	_#defs: "/$defs/handler_configs/$defs/on_subscribe": close({
		integration?: matchN(1, [_#defs."/$defs/handler_configs/$defs/on_subscribe/$defs/integration", [..._#defs."/$defs/handler_configs/$defs/on_subscribe/$defs/integration"]])
		behavior!: string
	})

	_#defs: "/$defs/handler_configs/$defs/on_subscribe/$defs/integration": close({
		lambda_config?: matchN(1, [_#defs."/$defs/handler_configs/$defs/on_subscribe/$defs/integration/$defs/lambda_config", [..._#defs."/$defs/handler_configs/$defs/on_subscribe/$defs/integration/$defs/lambda_config"]])
		data_source_name!: string
	})

	_#defs: "/$defs/handler_configs/$defs/on_subscribe/$defs/integration/$defs/lambda_config": close({
		invoke_type?: string
	})
}
