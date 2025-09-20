package res

import "list"

#google_compute_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_security_policy")
	close({
		// An optional description of this security policy. Max size is
		// 2048.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Fingerprint of this resource.
		fingerprint?: string
		id?:          string

		// The unique fingerprint of the labels.
		label_fingerprint?: string

		// Labels to apply to this address. A list of key->value pairs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the security policy.
		name!: string
		adaptive_protection_config?: matchN(1, [#adaptive_protection_config, list.MaxItems(1) & [...#adaptive_protection_config]])

		// The project in which the resource belongs. If it is not
		// provided, the provider project is used.
		project?: string
		advanced_options_config?: matchN(1, [#advanced_options_config, list.MaxItems(1) & [...#advanced_options_config]])
		recaptcha_options_config?: matchN(1, [#recaptcha_options_config, list.MaxItems(1) & [...#recaptcha_options_config]])
		rule?: matchN(1, [#rule, [...#rule]])
		timeouts?: #timeouts

		// The URI of the created resource.
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type indicates the intended use of the security policy.
		// CLOUD_ARMOR - Cloud Armor backend security policies can be
		// configured to filter incoming HTTP requests targeting backend
		// services. They filter requests before they hit the origin
		// servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies
		// can be configured to filter incoming HTTP requests targeting
		// backend services (including Cloud CDN-enabled) as well as
		// backend buckets (Cloud Storage). They filter requests before
		// the request is served from Google's cache.
		type?: string
	})

	#adaptive_protection_config: close({
		layer_7_ddos_defense_config?: matchN(1, [_#defs."/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config", list.MaxItems(1) & [..._#defs."/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config"]])
	})

	#advanced_options_config: close({
		// JSON body parsing. Supported values include: "DISABLED",
		// "STANDARD".
		json_parsing?: string
		json_custom_config?: matchN(1, [_#defs."/$defs/advanced_options_config/$defs/json_custom_config", list.MaxItems(1) & [..._#defs."/$defs/advanced_options_config/$defs/json_custom_config"]])

		// Logging level. Supported values include: "NORMAL", "VERBOSE".
		log_level?: string

		// An optional list of case-insensitive request header names to
		// use for resolving the callers client IP address.
		user_ip_request_headers?: [...string]
	})

	#recaptcha_options_config: close({
		// A field to supply a reCAPTCHA site key to be used for all the
		// rules using the redirect action with the type of
		// GOOGLE_RECAPTCHA under the security policy. The specified site
		// key needs to be created from the reCAPTCHA API. The user is
		// responsible for the validity of the specified site key. If not
		// specified, a Google-managed site key is used.
		redirect_site_key!: string
	})

	#rule: close({
		// Action to take when match matches the request.
		action!: string
		header_action?: matchN(1, [_#defs."/$defs/rule/$defs/header_action", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/header_action"]])

		// An optional description of this rule. Max size is 64.
		description?: string

		// When set to true, the action specified above is not enforced.
		// Stackdriver logs for requests that trigger a preview action
		// are annotated as such.
		preview?: bool

		// An unique positive integer indicating the priority of
		// evaluation for a rule. Rules are evaluated from highest
		// priority (lowest numerically) to lowest priority (highest
		// numerically) in order.
		priority!: number
		match?: matchN(1, [_#defs."/$defs/rule/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/match"]])
		preconfigured_waf_config?: matchN(1, [_#defs."/$defs/rule/$defs/preconfigured_waf_config", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/preconfigured_waf_config"]])
		rate_limit_options?: matchN(1, [_#defs."/$defs/rule/$defs/rate_limit_options", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rate_limit_options"]])
		redirect_options?: matchN(1, [_#defs."/$defs/rule/$defs/redirect_options", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/redirect_options"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config": close({
		threshold_configs?: matchN(1, [_#defs."/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config/$defs/threshold_configs", [..._#defs."/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config/$defs/threshold_configs"]])

		// If set to true, enables CAAP for L7 DDoS detection.
		enable?: bool

		// Rule visibility. Supported values include: "STANDARD",
		// "PREMIUM".
		rule_visibility?: string
	})

	_#defs: "/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config/$defs/threshold_configs": close({
		auto_deploy_confidence_threshold?: number

		// The name must be 1-63 characters long, and comply with RFC1035.
		// The name must be unique within the security policy.
		name!:                                    string
		auto_deploy_expiration_sec?:              number
		auto_deploy_impacted_baseline_threshold?: number
		auto_deploy_load_threshold?:              number
		detection_absolute_qps?:                  number
		detection_load_threshold?:                number
		detection_relative_to_baseline_qps?:      number
		traffic_granularity_configs?: matchN(1, [_#defs."/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config/$defs/threshold_configs/$defs/traffic_granularity_configs", [..._#defs."/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config/$defs/threshold_configs/$defs/traffic_granularity_configs"]])
	})

	_#defs: "/$defs/adaptive_protection_config/$defs/layer_7_ddos_defense_config/$defs/threshold_configs/$defs/traffic_granularity_configs": close({
		// If enabled, traffic matching each unique value for the
		// specified type constitutes a separate traffic unit. It can
		// only be set to true if value is empty.
		enable_each_unique_value?: bool

		// Type of this configuration.
		type!: string

		// Requests that match this value constitute a granular traffic
		// unit.
		value?: string
	})

	_#defs: "/$defs/advanced_options_config/$defs/json_custom_config": close({
		// A list of custom Content-Type header values to apply the JSON
		// parsing.
		content_types!: [...string]
	})

	_#defs: "/$defs/rule/$defs/header_action": close({
		request_headers_to_adds?: matchN(1, [_#defs."/$defs/rule/$defs/header_action/$defs/request_headers_to_adds", [_, ...] & [..._#defs."/$defs/rule/$defs/header_action/$defs/request_headers_to_adds"]])
	})

	_#defs: "/$defs/rule/$defs/header_action/$defs/request_headers_to_adds": close({
		// The name of the header to set.
		header_name!: string

		// The value to set the named header to.
		header_value?: string
	})

	_#defs: "/$defs/rule/$defs/match": close({
		config?: matchN(1, [_#defs."/$defs/rule/$defs/match/$defs/config", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/match/$defs/config"]])
		expr?: matchN(1, [_#defs."/$defs/rule/$defs/match/$defs/expr", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/match/$defs/expr"]])
		expr_options?: matchN(1, [_#defs."/$defs/rule/$defs/match/$defs/expr_options", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/match/$defs/expr_options"]])

		// Predefined rule expression. If this field is specified, config
		// must also be specified. Available options: SRC_IPS_V1: Must
		// specify the corresponding src_ip_ranges field in config.
		versioned_expr?: string
	})

	_#defs: "/$defs/rule/$defs/match/$defs/config": close({
		// Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation
		// to match against inbound traffic. There is a limit of 10 IP
		// ranges per rule. A value of '*' matches all IPs (can be used
		// to override the default behavior).
		src_ip_ranges!: [...string]
	})

	_#defs: "/$defs/rule/$defs/match/$defs/expr": close({
		// Textual representation of an expression in Common Expression
		// Language syntax. The application context of the containing
		// message determines which well-known feature set of CEL is
		// supported.
		expression!: string
	})

	_#defs: "/$defs/rule/$defs/match/$defs/expr_options": close({
		recaptcha_options?: matchN(1, [_#defs."/$defs/rule/$defs/match/$defs/expr_options/$defs/recaptcha_options", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/match/$defs/expr_options/$defs/recaptcha_options"]])
	})

	_#defs: "/$defs/rule/$defs/match/$defs/expr_options/$defs/recaptcha_options": close({
		// A list of site keys to be used during the validation of
		// reCAPTCHA action-tokens. The provided site keys need to be
		// created from reCAPTCHA API under the same project where the
		// security policy is created
		action_token_site_keys?: [...string]

		// A list of site keys to be used during the validation of
		// reCAPTCHA session-tokens. The provided site keys need to be
		// created from reCAPTCHA API under the same project where the
		// security policy is created.
		session_token_site_keys?: [...string]
	})

	_#defs: "/$defs/rule/$defs/preconfigured_waf_config": close({
		exclusion?: matchN(1, [_#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion", [..._#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion"]])
	})

	_#defs: "/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion": close({
		// A list of target rule IDs under the WAF rule set to apply the
		// preconfigured WAF exclusion. If omitted, it refers to all the
		// rule IDs under the WAF rule set.
		target_rule_ids?: [...string]
		request_cookie?: matchN(1, [_#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie", [..._#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie"]])
		request_header?: matchN(1, [_#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header", [..._#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header"]])
		request_query_param?: matchN(1, [_#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param", [..._#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param"]])
		request_uri?: matchN(1, [_#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri", [..._#defs."/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri"]])

		// Target WAF rule set to apply the preconfigured WAF exclusion.
		target_rule_set!: string
	})

	_#defs: "/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value. Available options: EQUALS:
		// The operator matches if the field value equals the specified
		// value. STARTS_WITH: The operator matches if the field value
		// starts with the specified value. ENDS_WITH: The operator
		// matches if the field value ends with the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value. EQUALS_ANY: The operator matches if the field
		// value is any value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation. The field
		// value must be given if the field operator is not EQUALS_ANY,
		// and cannot be given if the field operator is EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value. Available options: EQUALS:
		// The operator matches if the field value equals the specified
		// value. STARTS_WITH: The operator matches if the field value
		// starts with the specified value. ENDS_WITH: The operator
		// matches if the field value ends with the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value. EQUALS_ANY: The operator matches if the field
		// value is any value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation. The field
		// value must be given if the field operator is not EQUALS_ANY,
		// and cannot be given if the field operator is EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value. Available options: EQUALS:
		// The operator matches if the field value equals the specified
		// value. STARTS_WITH: The operator matches if the field value
		// starts with the specified value. ENDS_WITH: The operator
		// matches if the field value ends with the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value. EQUALS_ANY: The operator matches if the field
		// value is any value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation. The field
		// value must be given if the field operator is not EQUALS_ANY,
		// and cannot be given if the field operator is EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rule/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri": close({
		// You can specify an exact match or a partial match by using a
		// field operator and a field value. Available options: EQUALS:
		// The operator matches if the field value equals the specified
		// value. STARTS_WITH: The operator matches if the field value
		// starts with the specified value. ENDS_WITH: The operator
		// matches if the field value ends with the specified value.
		// CONTAINS: The operator matches if the field value contains the
		// specified value. EQUALS_ANY: The operator matches if the field
		// value is any value.
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation. The field
		// value must be given if the field operator is not EQUALS_ANY,
		// and cannot be given if the field operator is EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rule/$defs/rate_limit_options": close({
		// Can only be specified if the action for the rule is
		// "rate_based_ban". If specified, determines the time (in
		// seconds) the traffic will continue to be banned by the rate
		// limit after the rate falls below the threshold.
		ban_duration_sec?: number

		// Action to take for requests that are under the configured rate
		// limit threshold. Valid option is "allow" only.
		conform_action!: string

		// Determines the key to enforce the rateLimitThreshold on
		enforce_on_key?: string

		// Rate limit key name applicable only for the following key
		// types: HTTP_HEADER -- Name of the HTTP header whose value is
		// taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie
		// whose value is taken as the key value.
		enforce_on_key_name?: string
		ban_threshold?: matchN(1, [_#defs."/$defs/rule/$defs/rate_limit_options/$defs/ban_threshold", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rate_limit_options/$defs/ban_threshold"]])
		enforce_on_key_configs?: matchN(1, [_#defs."/$defs/rule/$defs/rate_limit_options/$defs/enforce_on_key_configs", [..._#defs."/$defs/rule/$defs/rate_limit_options/$defs/enforce_on_key_configs"]])

		// Action to take for requests that are above the configured rate
		// limit threshold, to either deny with a specified HTTP response
		// code, or redirect to a different endpoint. Valid options are
		// "deny()" where valid values for status are 403, 404, 429, and
		// 502, and "redirect" where the redirect parameters come from
		// exceedRedirectOptions below.
		exceed_action!: string
		exceed_redirect_options?: matchN(1, [_#defs."/$defs/rule/$defs/rate_limit_options/$defs/exceed_redirect_options", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rate_limit_options/$defs/exceed_redirect_options"]])
		rate_limit_threshold?: matchN(1, [_#defs."/$defs/rule/$defs/rate_limit_options/$defs/rate_limit_threshold", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/rate_limit_options/$defs/rate_limit_threshold"]])
	})

	_#defs: "/$defs/rule/$defs/rate_limit_options/$defs/ban_threshold": close({
		// Number of HTTP(S) requests for calculating the threshold.
		count!: number

		// Interval over which the threshold is computed.
		interval_sec!: number
	})

	_#defs: "/$defs/rule/$defs/rate_limit_options/$defs/enforce_on_key_configs": close({
		// Rate limit key name applicable only for the following key
		// types: HTTP_HEADER -- Name of the HTTP header whose value is
		// taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie
		// whose value is taken as the key value.
		enforce_on_key_name?: string

		// Determines the key to enforce the rate_limit_threshold on
		enforce_on_key_type?: string
	})

	_#defs: "/$defs/rule/$defs/rate_limit_options/$defs/exceed_redirect_options": close({
		// Target for the redirect action. This is required if the type is
		// EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
		target?: string

		// Type of the redirect action.
		type!: string
	})

	_#defs: "/$defs/rule/$defs/rate_limit_options/$defs/rate_limit_threshold": close({
		// Number of HTTP(S) requests for calculating the threshold.
		count!: number

		// Interval over which the threshold is computed.
		interval_sec!: number
	})

	_#defs: "/$defs/rule/$defs/redirect_options": close({
		// Target for the redirect action. This is required if the type is
		// EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA.
		target?: string

		// Type of the redirect action. Available options: EXTERNAL_302:
		// Must specify the corresponding target field in config.
		// GOOGLE_RECAPTCHA: Cannot specify target field in config.
		type!: string
	})
}
