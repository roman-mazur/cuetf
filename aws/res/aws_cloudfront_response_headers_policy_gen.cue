package res

import "list"

#aws_cloudfront_response_headers_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_response_headers_policy")
	close({
		cors_config?: matchN(1, [#cors_config, list.MaxItems(1) & [...#cors_config]])
		arn?:     string
		comment?: string
		etag?:    string
		id?:      string
		name!:    string
		custom_headers_config?: matchN(1, [#custom_headers_config, list.MaxItems(1) & [...#custom_headers_config]])
		remove_headers_config?: matchN(1, [#remove_headers_config, list.MaxItems(1) & [...#remove_headers_config]])
		security_headers_config?: matchN(1, [#security_headers_config, list.MaxItems(1) & [...#security_headers_config]])
		server_timing_headers_config?: matchN(1, [#server_timing_headers_config, list.MaxItems(1) & [...#server_timing_headers_config]])
	})

	#cors_config: close({
		access_control_allow_headers!: matchN(1, [_#defs."/$defs/cors_config/$defs/access_control_allow_headers", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cors_config/$defs/access_control_allow_headers"]])
		access_control_allow_methods!: matchN(1, [_#defs."/$defs/cors_config/$defs/access_control_allow_methods", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cors_config/$defs/access_control_allow_methods"]])
		access_control_allow_origins!: matchN(1, [_#defs."/$defs/cors_config/$defs/access_control_allow_origins", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cors_config/$defs/access_control_allow_origins"]])
		access_control_expose_headers?: matchN(1, [_#defs."/$defs/cors_config/$defs/access_control_expose_headers", list.MaxItems(1) & [..._#defs."/$defs/cors_config/$defs/access_control_expose_headers"]])
		access_control_allow_credentials!: bool
		access_control_max_age_sec?:       number
		origin_override!:                  bool
	})

	#custom_headers_config: close({
		items?: matchN(1, [_#defs."/$defs/custom_headers_config/$defs/items", [..._#defs."/$defs/custom_headers_config/$defs/items"]])
	})

	#remove_headers_config: close({
		items?: matchN(1, [_#defs."/$defs/remove_headers_config/$defs/items", [..._#defs."/$defs/remove_headers_config/$defs/items"]])
	})

	#security_headers_config: close({
		content_security_policy?: matchN(1, [_#defs."/$defs/security_headers_config/$defs/content_security_policy", list.MaxItems(1) & [..._#defs."/$defs/security_headers_config/$defs/content_security_policy"]])
		content_type_options?: matchN(1, [_#defs."/$defs/security_headers_config/$defs/content_type_options", list.MaxItems(1) & [..._#defs."/$defs/security_headers_config/$defs/content_type_options"]])
		frame_options?: matchN(1, [_#defs."/$defs/security_headers_config/$defs/frame_options", list.MaxItems(1) & [..._#defs."/$defs/security_headers_config/$defs/frame_options"]])
		referrer_policy?: matchN(1, [_#defs."/$defs/security_headers_config/$defs/referrer_policy", list.MaxItems(1) & [..._#defs."/$defs/security_headers_config/$defs/referrer_policy"]])
		strict_transport_security?: matchN(1, [_#defs."/$defs/security_headers_config/$defs/strict_transport_security", list.MaxItems(1) & [..._#defs."/$defs/security_headers_config/$defs/strict_transport_security"]])
		xss_protection?: matchN(1, [_#defs."/$defs/security_headers_config/$defs/xss_protection", list.MaxItems(1) & [..._#defs."/$defs/security_headers_config/$defs/xss_protection"]])
	})

	#server_timing_headers_config: close({
		enabled!:       bool
		sampling_rate!: number
	})

	_#defs: "/$defs/cors_config/$defs/access_control_allow_headers": close({
		items?: [...string]
	})

	_#defs: "/$defs/cors_config/$defs/access_control_allow_methods": close({
		items?: [...string]
	})

	_#defs: "/$defs/cors_config/$defs/access_control_allow_origins": close({
		items?: [...string]
	})

	_#defs: "/$defs/cors_config/$defs/access_control_expose_headers": close({
		items?: [...string]
	})

	_#defs: "/$defs/custom_headers_config/$defs/items": close({
		header!:   string
		override!: bool
		value!:    string
	})

	_#defs: "/$defs/remove_headers_config/$defs/items": close({
		header!: string
	})

	_#defs: "/$defs/security_headers_config/$defs/content_security_policy": close({
		content_security_policy!: string
		override!:                bool
	})

	_#defs: "/$defs/security_headers_config/$defs/content_type_options": close({
		override!: bool
	})

	_#defs: "/$defs/security_headers_config/$defs/frame_options": close({
		frame_option!: string
		override!:     bool
	})

	_#defs: "/$defs/security_headers_config/$defs/referrer_policy": close({
		override!:        bool
		referrer_policy!: string
	})

	_#defs: "/$defs/security_headers_config/$defs/strict_transport_security": close({
		access_control_max_age_sec!: number
		include_subdomains?:         bool
		override!:                   bool
		preload?:                    bool
	})

	_#defs: "/$defs/security_headers_config/$defs/xss_protection": close({
		mode_block?: bool
		override!:   bool
		protection!: bool
		report_uri?: string
	})
}
