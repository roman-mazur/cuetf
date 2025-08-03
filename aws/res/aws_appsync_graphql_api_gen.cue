package res

import "list"

#aws_appsync_graphql_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_graphql_api")
	close({
		api_type?: string
		arn?:      string
		additional_authentication_provider?: matchN(1, [#additional_authentication_provider, [...#additional_authentication_provider]])
		enhanced_metrics_config?: matchN(1, [#enhanced_metrics_config, list.MaxItems(1) & [...#enhanced_metrics_config]])
		lambda_authorizer_config?: matchN(1, [#lambda_authorizer_config, list.MaxItems(1) & [...#lambda_authorizer_config]])
		log_config?: matchN(1, [#log_config, list.MaxItems(1) & [...#log_config]])
		openid_connect_config?: matchN(1, [#openid_connect_config, list.MaxItems(1) & [...#openid_connect_config]])
		user_pool_config?: matchN(1, [#user_pool_config, list.MaxItems(1) & [...#user_pool_config]])
		authentication_type!:           string
		id?:                            string
		introspection_config?:          string
		merged_api_execution_role_arn?: string
		name!:                          string
		query_depth_limit?:             number
		region?:                        string
		resolver_count_limit?:          number
		schema?:                        string
		tags?: [string]:     string
		tags_all?: [string]: string
		uris?: [string]:     string
		visibility?:   string
		xray_enabled?: bool
	})

	#additional_authentication_provider: close({
		authentication_type!: string
		lambda_authorizer_config?: matchN(1, [_#defs."/$defs/additional_authentication_provider/$defs/lambda_authorizer_config", list.MaxItems(1) & [..._#defs."/$defs/additional_authentication_provider/$defs/lambda_authorizer_config"]])
		openid_connect_config?: matchN(1, [_#defs."/$defs/additional_authentication_provider/$defs/openid_connect_config", list.MaxItems(1) & [..._#defs."/$defs/additional_authentication_provider/$defs/openid_connect_config"]])
		user_pool_config?: matchN(1, [_#defs."/$defs/additional_authentication_provider/$defs/user_pool_config", list.MaxItems(1) & [..._#defs."/$defs/additional_authentication_provider/$defs/user_pool_config"]])
	})

	#enhanced_metrics_config: close({
		data_source_level_metrics_behavior!: string
		operation_level_metrics_config!:     string
		resolver_level_metrics_behavior!:    string
	})

	#lambda_authorizer_config: close({
		authorizer_result_ttl_in_seconds?: number
		authorizer_uri!:                   string
		identity_validation_expression?:   string
	})

	#log_config: close({
		cloudwatch_logs_role_arn!: string
		exclude_verbose_content?:  bool
		field_log_level!:          string
	})

	#openid_connect_config: close({
		auth_ttl?:  number
		client_id?: string
		iat_ttl?:   number
		issuer!:    string
	})

	#user_pool_config: close({
		app_id_client_regex?: string
		aws_region?:          string
		default_action!:      string
		user_pool_id!:        string
	})

	_#defs: "/$defs/additional_authentication_provider/$defs/lambda_authorizer_config": close({
		authorizer_result_ttl_in_seconds?: number
		authorizer_uri!:                   string
		identity_validation_expression?:   string
	})

	_#defs: "/$defs/additional_authentication_provider/$defs/openid_connect_config": close({
		auth_ttl?:  number
		client_id?: string
		iat_ttl?:   number
		issuer!:    string
	})

	_#defs: "/$defs/additional_authentication_provider/$defs/user_pool_config": close({
		app_id_client_regex?: string
		aws_region?:          string
		user_pool_id!:        string
	})
}
