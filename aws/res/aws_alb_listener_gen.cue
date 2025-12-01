package res

import "list"

#aws_alb_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_alb_listener")
	close({
		alpn_policy?:       string
		arn?:               string
		certificate_arn?:   string
		id?:                string
		load_balancer_arn!: string
		port?:              number
		protocol?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                                                string
		routing_http_request_x_amzn_mtls_clientcert_header_name?:               string
		routing_http_request_x_amzn_mtls_clientcert_issuer_header_name?:        string
		routing_http_request_x_amzn_mtls_clientcert_leaf_header_name?:          string
		routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name?: string
		routing_http_request_x_amzn_mtls_clientcert_subject_header_name?:       string
		routing_http_request_x_amzn_mtls_clientcert_validity_header_name?:      string
		routing_http_request_x_amzn_tls_cipher_suite_header_name?:              string
		routing_http_request_x_amzn_tls_version_header_name?:                   string
		routing_http_response_access_control_allow_credentials_header_value?:   string
		routing_http_response_access_control_allow_headers_header_value?:       string
		routing_http_response_access_control_allow_methods_header_value?:       string
		default_action!: matchN(1, [#default_action, [_, ...] & [...#default_action]])
		routing_http_response_access_control_allow_origin_header_value?:   string
		routing_http_response_access_control_expose_headers_header_value?: string
		routing_http_response_access_control_max_age_header_value?:        string
		routing_http_response_content_security_policy_header_value?:       string
		routing_http_response_server_enabled?:                             bool
		routing_http_response_strict_transport_security_header_value?:     string
		routing_http_response_x_content_type_options_header_value?:        string
		routing_http_response_x_frame_options_header_value?:               string
		ssl_policy?:                                                       string
		tags?: [string]:     string
		tags_all?: [string]: string
		tcp_idle_timeout_seconds?: number
		mutual_authentication?: matchN(1, [#mutual_authentication, list.MaxItems(1) & [...#mutual_authentication]])
		timeouts?: #timeouts
	})

	#default_action: close({
		authenticate_cognito?: matchN(1, [_#defs."/$defs/default_action/$defs/authenticate_cognito", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/authenticate_cognito"]])
		authenticate_oidc?: matchN(1, [_#defs."/$defs/default_action/$defs/authenticate_oidc", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/authenticate_oidc"]])
		order?:            number
		target_group_arn?: string
		type!:             string
		fixed_response?: matchN(1, [_#defs."/$defs/default_action/$defs/fixed_response", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/fixed_response"]])
		forward?: matchN(1, [_#defs."/$defs/default_action/$defs/forward", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/forward"]])
		jwt_validation?: matchN(1, [_#defs."/$defs/default_action/$defs/jwt_validation", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/jwt_validation"]])
		redirect?: matchN(1, [_#defs."/$defs/default_action/$defs/redirect", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/redirect"]])
	})

	#mutual_authentication: close({
		advertise_trust_store_ca_names?:   string
		ignore_client_certificate_expiry?: bool
		mode!:                             string
		trust_store_arn?:                  string
	})

	#timeouts: close({
		create?: string
		update?: string
	})

	_#defs: "/$defs/default_action/$defs/authenticate_cognito": close({
		authentication_request_extra_params?: [string]: string
		on_unauthenticated_request?: string
		scope?:                      string
		session_cookie_name?:        string
		session_timeout?:            number
		user_pool_arn!:              string
		user_pool_client_id!:        string
		user_pool_domain!:           string
	})

	_#defs: "/$defs/default_action/$defs/authenticate_oidc": close({
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

	_#defs: "/$defs/default_action/$defs/fixed_response": close({
		content_type!: string
		message_body?: string
		status_code?:  string
	})

	_#defs: "/$defs/default_action/$defs/forward": close({
		stickiness?: matchN(1, [_#defs."/$defs/default_action/$defs/forward/$defs/stickiness", list.MaxItems(1) & [..._#defs."/$defs/default_action/$defs/forward/$defs/stickiness"]])
		target_group!: matchN(1, [_#defs."/$defs/default_action/$defs/forward/$defs/target_group", list.MaxItems(5) & [_, ...] & [..._#defs."/$defs/default_action/$defs/forward/$defs/target_group"]])
	})

	_#defs: "/$defs/default_action/$defs/forward/$defs/stickiness": close({
		duration!: number
		enabled?:  bool
	})

	_#defs: "/$defs/default_action/$defs/forward/$defs/target_group": close({
		arn!:    string
		weight?: number
	})

	_#defs: "/$defs/default_action/$defs/jwt_validation": close({
		additional_claim?: matchN(1, [_#defs."/$defs/default_action/$defs/jwt_validation/$defs/additional_claim", list.MaxItems(10) & [..._#defs."/$defs/default_action/$defs/jwt_validation/$defs/additional_claim"]])
		issuer!:        string
		jwks_endpoint!: string
	})

	_#defs: "/$defs/default_action/$defs/jwt_validation/$defs/additional_claim": close({
		format!: string
		name!:   string
		values!: [...string]
	})

	_#defs: "/$defs/default_action/$defs/redirect": close({
		host?:        string
		path?:        string
		port?:        string
		protocol?:    string
		query?:       string
		status_code!: string
	})
}
