package res

import "list"

#google_compute_security_policy_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_security_policy_rule")
	close({
		// The Action to perform when the rule is matched. The following
		// are the valid actions:
		//
		// * allow: allow access to target.
		//
		// * deny(STATUS): deny access to target, returns the HTTP
		// response code specified. Valid values for STATUS are 403, 404,
		// and 502.
		//
		// * rate_based_ban: limit client traffic to the configured
		// threshold and ban the client if the traffic exceeds the
		// threshold. Configure parameters for this action in
		// RateLimitOptions. Requires rateLimitOptions to be set.
		//
		// * redirect: redirect to a different target. This can either be
		// an internal reCAPTCHA redirect, or an external URL-based
		// redirect via a 302 response. Parameters for this action can be
		// configured via redirectOptions. This action is only supported
		// in Global Security Policies of type CLOUD_ARMOR.
		//
		// * throttle: limit client traffic to the configured threshold.
		// Configure parameters for this action in rateLimitOptions.
		// Requires rateLimitOptions to be set for this.
		action!: string

		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string
		header_action?: matchN(1, [#header_action, list.MaxItems(1) & [...#header_action]])
		id?: string

		// If set to true, the specified action is not enforced.
		preview?: bool
		match?: matchN(1, [#match, list.MaxItems(1) & [...#match]])

		// An integer indicating the priority of a rule in the list.
		// The priority must be a positive value between 0 and 2147483647.
		// Rules are evaluated from highest to lowest priority where 0 is
		// the highest priority and 2147483647 is the lowest priority.
		priority!: number
		preconfigured_waf_config?: matchN(1, [#preconfigured_waf_config, list.MaxItems(1) & [...#preconfigured_waf_config]])
		rate_limit_options?: matchN(1, [#rate_limit_options, list.MaxItems(1) & [...#rate_limit_options]])
		redirect_options?: matchN(1, [#redirect_options, list.MaxItems(1) & [...#redirect_options]])
		project?:  string
		timeouts?: #timeouts

		// The name of the security policy this rule belongs to.
		security_policy!: string
	})

	#header_action: close({
		request_headers_to_adds?: matchN(1, [_#defs."/$defs/header_action/$defs/request_headers_to_adds", [..._#defs."/$defs/header_action/$defs/request_headers_to_adds"]])
	})

	#match: close({
		config?: matchN(1, [_#defs."/$defs/match/$defs/config", list.MaxItems(1) & [..._#defs."/$defs/match/$defs/config"]])
		expr?: matchN(1, [_#defs."/$defs/match/$defs/expr", list.MaxItems(1) & [..._#defs."/$defs/match/$defs/expr"]])
		expr_options?: matchN(1, [_#defs."/$defs/match/$defs/expr_options", list.MaxItems(1) & [..._#defs."/$defs/match/$defs/expr_options"]])

		// Preconfigured versioned expression. If this field is specified,
		// config must also be specified.
		// Available preconfigured expressions along with their
		// requirements are: SRC_IPS_V1 - must specify the corresponding
		// srcIpRange field in config. Possible values: ["SRC_IPS_V1"]
		versioned_expr?: string
	})

	#preconfigured_waf_config: close({
		exclusion?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion"]])
	})

	#rate_limit_options: close({
		// Can only be specified if the action for the rule is
		// "rate_based_ban".
		// If specified, determines the time (in seconds) the traffic will
		// continue to be banned by the rate limit after the rate falls
		// below the threshold.
		ban_duration_sec?: number

		// Action to take for requests that are under the configured rate
		// limit threshold.
		// Valid option is "allow" only.
		conform_action?: string

		// Determines the key to enforce the rateLimitThreshold on.
		// Possible values are:
		// * ALL: A single rate limit threshold is applied to all the
		// requests matching this rule. This is the default value if
		// "enforceOnKey" is not configured.
		// * IP: The source IP address of the request is the key. Each IP
		// has this limit enforced separately.
		// * HTTP_HEADER: The value of the HTTP header whose name is
		// configured under "enforceOnKeyName". The key value is
		// truncated to the first 128 bytes of the header value. If no
		// such header is present in the request, the key type defaults
		// to ALL.
		// * XFF_IP: The first IP address (i.e. the originating client IP
		// address) specified in the list of IPs under X-Forwarded-For
		// HTTP header. If no such header is present or the value is not
		// a valid IP, the key defaults to the source IP address of the
		// request i.e. key type IP.
		// * HTTP_COOKIE: The value of the HTTP cookie whose name is
		// configured under "enforceOnKeyName". The key value is
		// truncated to the first 128 bytes of the cookie value. If no
		// such cookie is present in the request, the key type defaults
		// to ALL.
		// * HTTP_PATH: The URL path of the HTTP request. The key value is
		// truncated to the first 128 bytes.
		// * SNI: Server name indication in the TLS session of the HTTPS
		// request. The key value is truncated to the first 128 bytes.
		// The key type defaults to ALL on a HTTP session.
		// * REGION_CODE: The country/region from which the request
		// originates.
		// * TLS_JA3_FINGERPRINT: JA3 TLS/SSL fingerprint if the client
		// connects using HTTPS, HTTP/2 or HTTP/3. If not available, the
		// key type defaults to ALL.
		// * TLS_JA4_FINGERPRINT: JA4 TLS/SSL fingerprint if the client
		// connects using HTTPS, HTTP/2 or HTTP/3. If not available, the
		// key type defaults to ALL.
		// * USER_IP: The IP address of the originating client, which is
		// resolved based on "userIpRequestHeaders" configured with the
		// security policy. If there is no "userIpRequestHeaders"
		// configuration or an IP address cannot be resolved from it, the
		// key type defaults to IP. Possible values: ["ALL", "IP",
		// "HTTP_HEADER", "XFF_IP", "HTTP_COOKIE", "HTTP_PATH", "SNI",
		// "REGION_CODE", "TLS_JA3_FINGERPRINT", "TLS_JA4_FINGERPRINT",
		// "USER_IP"]
		enforce_on_key?: string

		// Rate limit key name applicable only for the following key
		// types:
		// HTTP_HEADER -- Name of the HTTP header whose value is taken as
		// the key value.
		// HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as
		// the key value.
		enforce_on_key_name?: string
		ban_threshold?: matchN(1, [_#defs."/$defs/rate_limit_options/$defs/ban_threshold", list.MaxItems(1) & [..._#defs."/$defs/rate_limit_options/$defs/ban_threshold"]])
		enforce_on_key_configs?: matchN(1, [_#defs."/$defs/rate_limit_options/$defs/enforce_on_key_configs", [..._#defs."/$defs/rate_limit_options/$defs/enforce_on_key_configs"]])

		// Action to take for requests that are above the configured rate
		// limit threshold, to either deny with a specified HTTP response
		// code, or redirect to a different endpoint.
		// Valid options are deny(STATUS), where valid values for STATUS
		// are 403, 404, 429, and 502.
		exceed_action?: string
		exceed_redirect_options?: matchN(1, [_#defs."/$defs/rate_limit_options/$defs/exceed_redirect_options", list.MaxItems(1) & [..._#defs."/$defs/rate_limit_options/$defs/exceed_redirect_options"]])
		rate_limit_threshold?: matchN(1, [_#defs."/$defs/rate_limit_options/$defs/rate_limit_threshold", list.MaxItems(1) & [..._#defs."/$defs/rate_limit_options/$defs/rate_limit_threshold"]])
	})

	#redirect_options: close({
		// Target for the redirect action. This is required if the type is
		// EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
		target?: string

		// Type of the redirect action.
		type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/header_action/$defs/request_headers_to_adds": close({
		// The name of the header to set.
		header_name?: string

		// The value to set the named header to.
		header_value?: string
	})

	_#defs: "/$defs/match/$defs/config": close({
		// CIDR IP address range. Maximum number of srcIpRanges allowed is
		// 10.
		src_ip_ranges?: [...string]
	})

	_#defs: "/$defs/match/$defs/expr": close({
		// Textual representation of an expression in Common Expression
		// Language syntax. The application context of the containing
		// message determines which well-known feature set of CEL is
		// supported.
		expression!: string
	})

	_#defs: "/$defs/match/$defs/expr_options": close({
		recaptcha_options?: matchN(1, [_#defs."/$defs/match/$defs/expr_options/$defs/recaptcha_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/match/$defs/expr_options/$defs/recaptcha_options"]])
	})

	_#defs: "/$defs/match/$defs/expr_options/$defs/recaptcha_options": close({
		// A list of site keys to be used during the validation of
		// reCAPTCHA action-tokens. The provided site keys need to be
		// created from reCAPTCHA API under the same project where the
		// security policy is created.
		action_token_site_keys?: [...string]

		// A list of site keys to be used during the validation of
		// reCAPTCHA session-tokens. The provided site keys need to be
		// created from reCAPTCHA API under the same project where the
		// security policy is created.
		session_token_site_keys?: [...string]
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion": close({
		// A list of target rule IDs under the WAF rule set to apply the
		// preconfigured WAF exclusion.
		// If omitted, it refers to all the rule IDs under the WAF rule
		// set.
		target_rule_ids?: [...string]
		request_cookie?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie"]])
		request_header?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header"]])
		request_query_param?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param"]])
		request_uri?: matchN(1, [_#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri", [..._#defs."/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri"]])

		// Target WAF rule set to apply the preconfigured WAF exclusion.
		target_rule_set!: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value.
		// Available options:
		// EQUALS: The operator matches if the field value equals the
		// specified value.
		// STARTS_WITH: The operator matches if the field value starts
		// with the specified value.
		// ENDS_WITH: The operator matches if the field value ends with
		// the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value.
		// EQUALS_ANY: The operator matches if the field value is any
		// value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rate_limit_options/$defs/ban_threshold": close({
		// Number of HTTP(S) requests for calculating the threshold.
		count?: number

		// Interval over which the threshold is computed.
		interval_sec?: number
	})

	_#defs: "/$defs/rate_limit_options/$defs/enforce_on_key_configs": close({
		// Rate limit key name applicable only for the following key
		// types:
		// HTTP_HEADER -- Name of the HTTP header whose value is taken as
		// the key value.
		// HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as
		// the key value.
		enforce_on_key_name?: string

		// Determines the key to enforce the rateLimitThreshold on.
		// Possible values are:
		// * ALL: A single rate limit threshold is applied to all the
		// requests matching this rule. This is the default value if
		// "enforceOnKeyConfigs" is not configured.
		// * IP: The source IP address of the request is the key. Each IP
		// has this limit enforced separately.
		// * HTTP_HEADER: The value of the HTTP header whose name is
		// configured under "enforceOnKeyName". The key value is
		// truncated to the first 128 bytes of the header value. If no
		// such header is present in the request, the key type defaults
		// to ALL.
		// * XFF_IP: The first IP address (i.e. the originating client IP
		// address) specified in the list of IPs under X-Forwarded-For
		// HTTP header. If no such header is present or the value is not
		// a valid IP, the key defaults to the source IP address of the
		// request i.e. key type IP.
		// * HTTP_COOKIE: The value of the HTTP cookie whose name is
		// configured under "enforceOnKeyName". The key value is
		// truncated to the first 128 bytes of the cookie value. If no
		// such cookie is present in the request, the key type defaults
		// to ALL.
		// * HTTP_PATH: The URL path of the HTTP request. The key value is
		// truncated to the first 128 bytes.
		// * SNI: Server name indication in the TLS session of the HTTPS
		// request. The key value is truncated to the first 128 bytes.
		// The key type defaults to ALL on a HTTP session.
		// * REGION_CODE: The country/region from which the request
		// originates.
		// * TLS_JA3_FINGERPRINT: JA3 TLS/SSL fingerprint if the client
		// connects using HTTPS, HTTP/2 or HTTP/3. If not available, the
		// key type defaults to ALL.
		// * TLS_JA4_FINGERPRINT: JA4 TLS/SSL fingerprint if the client
		// connects using HTTPS, HTTP/2 or HTTP/3. If not available, the
		// key type defaults to ALL.
		// * USER_IP: The IP address of the originating client, which is
		// resolved based on "userIpRequestHeaders" configured with the
		// security policy. If there is no "userIpRequestHeaders"
		// configuration or an IP address cannot be resolved from it, the
		// key type defaults to IP. Possible values: ["ALL", "IP",
		// "HTTP_HEADER", "XFF_IP", "HTTP_COOKIE", "HTTP_PATH", "SNI",
		// "REGION_CODE", "TLS_JA3_FINGERPRINT", "TLS_JA4_FINGERPRINT",
		// "USER_IP"]
		enforce_on_key_type?: string
	})

	_#defs: "/$defs/rate_limit_options/$defs/exceed_redirect_options": close({
		// Target for the redirect action. This is required if the type is
		// EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
		target?: string

		// Type of the redirect action.
		type?: string
	})

	_#defs: "/$defs/rate_limit_options/$defs/rate_limit_threshold": close({
		// Number of HTTP(S) requests for calculating the threshold.
		count?: number

		// Interval over which the threshold is computed.
		interval_sec?: number
	})
}
