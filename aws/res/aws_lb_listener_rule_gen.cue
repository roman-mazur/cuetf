package res

import "list"

#aws_lb_listener_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lb_listener_rule")
	close({
		action?: matchN(1, [#action, [_, ...] & [...#action]])
		arn?:          string
		id?:           string
		listener_arn!: string
		priority?:     number
		region?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
		condition?: matchN(1, [#condition, [_, ...] & [...#condition]])
	})

	#action: close({
		authenticate_cognito?: matchN(1, [_#defs."/$defs/action/$defs/authenticate_cognito", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/authenticate_cognito"]])
		authenticate_oidc?: matchN(1, [_#defs."/$defs/action/$defs/authenticate_oidc", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/authenticate_oidc"]])
		order?: number
		fixed_response?: matchN(1, [_#defs."/$defs/action/$defs/fixed_response", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/fixed_response"]])
		target_group_arn?: string
		forward?: matchN(1, [_#defs."/$defs/action/$defs/forward", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/forward"]])
		redirect?: matchN(1, [_#defs."/$defs/action/$defs/redirect", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/redirect"]])
		type!: string
	})

	#condition: close({
		host_header?: matchN(1, [_#defs."/$defs/condition/$defs/host_header", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/host_header"]])
		http_header?: matchN(1, [_#defs."/$defs/condition/$defs/http_header", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/http_header"]])
		http_request_method?: matchN(1, [_#defs."/$defs/condition/$defs/http_request_method", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/http_request_method"]])
		path_pattern?: matchN(1, [_#defs."/$defs/condition/$defs/path_pattern", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/path_pattern"]])
		query_string?: matchN(1, [_#defs."/$defs/condition/$defs/query_string", [..._#defs."/$defs/condition/$defs/query_string"]])
		source_ip?: matchN(1, [_#defs."/$defs/condition/$defs/source_ip", list.MaxItems(1) & [..._#defs."/$defs/condition/$defs/source_ip"]])
	})

	_#defs: "/$defs/action/$defs/authenticate_cognito": close({
		authentication_request_extra_params?: [string]: string
		on_unauthenticated_request?: string
		scope?:                      string
		session_cookie_name?:        string
		session_timeout?:            number
		user_pool_arn!:              string
		user_pool_client_id!:        string
		user_pool_domain!:           string
	})

	_#defs: "/$defs/action/$defs/authenticate_oidc": close({
		authentication_request_extra_params?: [string]: string
		authorization_endpoint!:     string
		client_id!:                  string
		client_secret!:              string
		issuer!:                     string
		on_unauthenticated_request?: string
		scope?:                      string
		session_cookie_name?:        string
		session_timeout?:            number
		token_endpoint!:             string
		user_info_endpoint!:         string
	})

	_#defs: "/$defs/action/$defs/fixed_response": close({
		content_type!: string
		message_body?: string
		status_code?:  string
	})

	_#defs: "/$defs/action/$defs/forward": close({
		stickiness?: matchN(1, [_#defs."/$defs/action/$defs/forward/$defs/stickiness", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/forward/$defs/stickiness"]])
		target_group?: matchN(1, [_#defs."/$defs/action/$defs/forward/$defs/target_group", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/action/$defs/forward/$defs/target_group"]])
	})

	_#defs: "/$defs/action/$defs/forward/$defs/stickiness": close({
		duration!: number
		enabled?:  bool
	})

	_#defs: "/$defs/action/$defs/forward/$defs/target_group": close({
		arn!:    string
		weight?: number
	})

	_#defs: "/$defs/action/$defs/redirect": close({
		host?:        string
		path?:        string
		port?:        string
		protocol?:    string
		query?:       string
		status_code!: string
	})

	_#defs: "/$defs/condition/$defs/host_header": close({
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/http_header": close({
		http_header_name!: string
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/http_request_method": close({
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/path_pattern": close({
		values!: [...string]
	})

	_#defs: "/$defs/condition/$defs/query_string": close({
		key?:   string
		value!: string
	})

	_#defs: "/$defs/condition/$defs/source_ip": close({
		values!: [...string]
	})
}
