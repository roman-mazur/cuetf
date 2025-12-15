package data

#aws_lb_listener_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lb_listener_rule")
	close({
		arn?:          string
		listener_arn?: string
		priority?:     number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		action?: matchN(1, [#action, [...#action]])
		tags?: [string]: string
		condition?: matchN(1, [#condition, [...#condition]])
		transform?: matchN(1, [#transform, [...#transform]])
	})

	#action: close({
		authenticate_cognito?: matchN(1, [_#defs."/$defs/action/$defs/authenticate_cognito", [..._#defs."/$defs/action/$defs/authenticate_cognito"]])
		authenticate_oidc?: matchN(1, [_#defs."/$defs/action/$defs/authenticate_oidc", [..._#defs."/$defs/action/$defs/authenticate_oidc"]])
		fixed_response?: matchN(1, [_#defs."/$defs/action/$defs/fixed_response", [..._#defs."/$defs/action/$defs/fixed_response"]])
		forward?: matchN(1, [_#defs."/$defs/action/$defs/forward", [..._#defs."/$defs/action/$defs/forward"]])
		jwt_validation?: matchN(1, [_#defs."/$defs/action/$defs/jwt_validation", [..._#defs."/$defs/action/$defs/jwt_validation"]])
		redirect?: matchN(1, [_#defs."/$defs/action/$defs/redirect", [..._#defs."/$defs/action/$defs/redirect"]])
		order?: number
		type?:  string
	})

	#condition: close({
		host_header?: matchN(1, [_#defs."/$defs/condition/$defs/host_header", [..._#defs."/$defs/condition/$defs/host_header"]])
		http_header?: matchN(1, [_#defs."/$defs/condition/$defs/http_header", [..._#defs."/$defs/condition/$defs/http_header"]])
		http_request_method?: matchN(1, [_#defs."/$defs/condition/$defs/http_request_method", [..._#defs."/$defs/condition/$defs/http_request_method"]])
		path_pattern?: matchN(1, [_#defs."/$defs/condition/$defs/path_pattern", [..._#defs."/$defs/condition/$defs/path_pattern"]])
		query_string?: matchN(1, [_#defs."/$defs/condition/$defs/query_string", [..._#defs."/$defs/condition/$defs/query_string"]])
		source_ip?: matchN(1, [_#defs."/$defs/condition/$defs/source_ip", [..._#defs."/$defs/condition/$defs/source_ip"]])
	})

	#transform: close({
		host_header_rewrite_config?: matchN(1, [_#defs."/$defs/transform/$defs/host_header_rewrite_config", [..._#defs."/$defs/transform/$defs/host_header_rewrite_config"]])
		url_rewrite_config?: matchN(1, [_#defs."/$defs/transform/$defs/url_rewrite_config", [..._#defs."/$defs/transform/$defs/url_rewrite_config"]])
		type?: string
	})

	_#defs: "/$defs/action/$defs/authenticate_cognito": close({
		authentication_request_extra_params?: [string]: string
		on_unauthenticated_request?: string
		scope?:                      string
		session_cookie_name?:        string
		session_timeout?:            number
		user_pool_arn?:              string
		user_pool_client_id?:        string
		user_pool_domain?:           string
	})

	_#defs: "/$defs/action/$defs/authenticate_oidc": close({
		authentication_request_extra_params?: [string]: string
		authorization_endpoint?:     string
		client_id?:                  string
		issuer?:                     string
		on_unauthenticated_request?: string
		scope?:                      string
		session_cookie_name?:        string
		session_timeout?:            number
		token_endpoint?:             string
		user_info_endpoint?:         string
	})

	_#defs: "/$defs/action/$defs/fixed_response": close({
		content_type?: string
		message_body?: string
		status_code?:  string
	})

	_#defs: "/$defs/action/$defs/forward": close({
		stickiness?: matchN(1, [_#defs."/$defs/action/$defs/forward/$defs/stickiness", [..._#defs."/$defs/action/$defs/forward/$defs/stickiness"]])
		target_group?: matchN(1, [_#defs."/$defs/action/$defs/forward/$defs/target_group", [..._#defs."/$defs/action/$defs/forward/$defs/target_group"]])
	})

	_#defs: "/$defs/action/$defs/forward/$defs/stickiness": close({
		duration?: number
		enabled?:  bool
	})

	_#defs: "/$defs/action/$defs/forward/$defs/target_group": close({
		arn?:    string
		weight?: number
	})

	_#defs: "/$defs/action/$defs/jwt_validation": close({
		additional_claim?: matchN(1, [_#defs."/$defs/action/$defs/jwt_validation/$defs/additional_claim", [..._#defs."/$defs/action/$defs/jwt_validation/$defs/additional_claim"]])
		issuer?:        string
		jwks_endpoint?: string
	})

	_#defs: "/$defs/action/$defs/jwt_validation/$defs/additional_claim": close({
		format?: string
		name?:   string
		values?: [...string]
	})

	_#defs: "/$defs/action/$defs/redirect": close({
		host?:        string
		path?:        string
		port?:        string
		protocol?:    string
		query?:       string
		status_code?: string
	})

	_#defs: "/$defs/condition/$defs/host_header": close({
		regex_values?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/condition/$defs/http_header": close({
		http_header_name?: string
		regex_values?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/condition/$defs/http_request_method": close({
		values?: [...string]
	})

	_#defs: "/$defs/condition/$defs/path_pattern": close({
		regex_values?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/condition/$defs/query_string": close({
		values?: matchN(1, [_#defs."/$defs/condition/$defs/query_string/$defs/values", [..._#defs."/$defs/condition/$defs/query_string/$defs/values"]])
	})

	_#defs: "/$defs/condition/$defs/query_string/$defs/values": close({
		key?:   string
		value?: string
	})

	_#defs: "/$defs/condition/$defs/source_ip": close({
		values?: [...string]
	})

	_#defs: "/$defs/transform/$defs/host_header_rewrite_config": close({
		rewrite?: matchN(1, [_#defs."/$defs/transform/$defs/host_header_rewrite_config/$defs/rewrite", [..._#defs."/$defs/transform/$defs/host_header_rewrite_config/$defs/rewrite"]])
	})

	_#defs: "/$defs/transform/$defs/host_header_rewrite_config/$defs/rewrite": close({
		regex?:   string
		replace?: string
	})

	_#defs: "/$defs/transform/$defs/url_rewrite_config": close({
		rewrite?: matchN(1, [_#defs."/$defs/transform/$defs/url_rewrite_config/$defs/rewrite", [..._#defs."/$defs/transform/$defs/url_rewrite_config/$defs/rewrite"]])
	})

	_#defs: "/$defs/transform/$defs/url_rewrite_config/$defs/rewrite": close({
		regex?:   string
		replace?: string
	})
}
