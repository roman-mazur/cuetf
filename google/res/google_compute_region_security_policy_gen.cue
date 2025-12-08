package res

import "list"

#google_compute_region_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_security_policy")
	close({
		// An optional description of this resource. Provide this property
		// when you create the resource.
		description?: string

		// Fingerprint of this resource. This field is used internally
		// during
		// updates of this resource.
		fingerprint?: string

		// Name of the resource. Provided by the client when the resource
		// is created. The name must be 1-63 characters long, and comply
		// with RFC1035.
		// Specifically, the name must be 1-63 characters long and match
		// the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means
		// the first character must be a lowercase letter, and all
		// following characters must be a dash, lowercase letter, or
		// digit, except the last character, which cannot be a dash.
		name!: string
		id?:   string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		policy_id?: string

		// The Region in which the created Region Security Policy should
		// reside.
		// If it is not provided, the provider region is used.
		region?:  string
		project?: string

		// Server-defined URL for the resource.
		self_link?: string
		advanced_options_config?: matchN(1, [#advanced_options_config, list.MaxItems(1) & [...#advanced_options_config]])
		ddos_protection_config?: matchN(1, [#ddos_protection_config, list.MaxItems(1) & [...#ddos_protection_config]])
		rules?: matchN(1, [#rules, [...#rules]])
		timeouts?: #timeouts
		user_defined_fields?: matchN(1, [#user_defined_fields, [...#user_defined_fields]])

		// Server-defined URL for this resource with the resource id.
		self_link_with_policy_id?: string

		// The type indicates the intended use of the security policy.
		// - CLOUD_ARMOR: Cloud Armor backend security policies can be
		// configured to filter incoming HTTP requests targeting backend
		// services. They filter requests before they hit the origin
		// servers.
		// - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be
		// configured to filter incoming HTTP requests targeting backend
		// services (including Cloud CDN-enabled) as well as backend
		// buckets (Cloud Storage). They filter requests before the
		// request is served from Google's cache.
		// - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be
		// configured to filter packets targeting network load balancing
		// resources such as backend services, target pools, target
		// instances, and instances with external IPs. They filter
		// requests before the request is served from the application.
		// This field can be set only at resource creation time. Possible
		// values: ["CLOUD_ARMOR", "CLOUD_ARMOR_EDGE",
		// "CLOUD_ARMOR_NETWORK"]
		type?: string
	})

	#advanced_options_config: close({
		// JSON body parsing. Supported values include: "DISABLED",
		// "STANDARD", "STANDARD_WITH_GRAPHQL". Possible values:
		// ["DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL"]
		json_parsing?: string
		json_custom_config?: matchN(1, [_#defs."/$defs/advanced_options_config/$defs/json_custom_config", list.MaxItems(1) & [..._#defs."/$defs/advanced_options_config/$defs/json_custom_config"]])

		// Logging level. Supported values include: "NORMAL", "VERBOSE".
		// Possible values: ["NORMAL", "VERBOSE"]
		log_level?: string

		// An optional list of case-insensitive request header names to
		// use for resolving the callers client IP address.
		user_ip_request_headers?: [...string]
	})

	#ddos_protection_config: close({
		// Google Cloud Armor offers the following options to help protect
		// systems against DDoS attacks:
		// - STANDARD: basic always-on protection for network load
		// balancers, protocol forwarding, or VMs with public IP
		// addresses.
		// - ADVANCED: additional protections for Managed Protection Plus
		// subscribers who use network load balancers, protocol
		// forwarding, or VMs with public IP addresses.
		// - ADVANCED_PREVIEW: flag to enable the security policy in
		// preview mode. Possible values: ["ADVANCED",
		// "ADVANCED_PREVIEW", "STANDARD"]
		ddos_protection!: string
	})

	#rules: close({
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
		match?: matchN(1, [_#defs."/$defs/rules/$defs/match", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/match"]])

		// If set to true, the specified action is not enforced.
		preview?: bool
		network_match?: matchN(1, [_#defs."/$defs/rules/$defs/network_match", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/network_match"]])

		// An integer indicating the priority of a rule in the list.
		// The priority must be a positive value between 0 and 2147483647.
		// Rules are evaluated from highest to lowest priority where 0 is
		// the highest priority and 2147483647 is the lowest priority.
		priority!: number
		preconfigured_waf_config?: matchN(1, [_#defs."/$defs/rules/$defs/preconfigured_waf_config", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/preconfigured_waf_config"]])
		rate_limit_options?: matchN(1, [_#defs."/$defs/rules/$defs/rate_limit_options", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rate_limit_options"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user_defined_fields: close({
		// The base relative to which 'offset' is measured. Possible
		// values are:
		// - IPV4: Points to the beginning of the IPv4 header.
		// - IPV6: Points to the beginning of the IPv6 header.
		// - TCP: Points to the beginning of the TCP header, skipping over
		// any IPv4 options or IPv6 extension headers. Not present for
		// non-first fragments.
		// - UDP: Points to the beginning of the UDP header, skipping over
		// any IPv4 options or IPv6 extension headers. Not present for
		// non-first fragments. Possible values: ["IPV4", "IPV6", "TCP",
		// "UDP"]
		base!: string

		// If specified, apply this mask (bitwise AND) to the field to
		// ignore bits before matching.
		// Encoded as a hexadecimal number (starting with "0x").
		// The last byte of the field (in network byte order) corresponds
		// to the least significant byte of the mask.
		mask?: string

		// The name of this field. Must be unique within the policy.
		name?: string

		// Offset of the first byte of the field (in network byte order)
		// relative to 'base'.
		offset?: number

		// Size of the field in bytes. Valid values: 1-4.
		size?: number
	})

	_#defs: "/$defs/advanced_options_config/$defs/json_custom_config": close({
		// A list of custom Content-Type header values to apply the JSON
		// parsing.
		content_types!: [...string]
	})

	_#defs: "/$defs/rules/$defs/match": close({
		config?: matchN(1, [_#defs."/$defs/rules/$defs/match/$defs/config", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/match/$defs/config"]])
		expr?: matchN(1, [_#defs."/$defs/rules/$defs/match/$defs/expr", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/match/$defs/expr"]])

		// Preconfigured versioned expression. If this field is specified,
		// config must also be specified.
		// Available preconfigured expressions along with their
		// requirements are: SRC_IPS_V1 - must specify the corresponding
		// srcIpRange field in config. Possible values: ["SRC_IPS_V1"]
		versioned_expr?: string
	})

	_#defs: "/$defs/rules/$defs/match/$defs/config": close({
		// CIDR IP address range. Maximum number of srcIpRanges allowed is
		// 10.
		src_ip_ranges?: [...string]
	})

	_#defs: "/$defs/rules/$defs/match/$defs/expr": close({
		// Textual representation of an expression in Common Expression
		// Language syntax. The application context of the containing
		// message determines which well-known feature set of CEL is
		// supported.
		expression!: string
	})

	_#defs: "/$defs/rules/$defs/network_match": close({
		// Destination IPv4/IPv6 addresses or CIDR prefixes, in standard
		// text format.
		dest_ip_ranges?: [...string]

		// Destination port numbers for TCP/UDP/SCTP. Each element can be
		// a 16-bit unsigned decimal number (e.g. "80") or range (e.g.
		// "0-1023").
		dest_ports?: [...string]

		// IPv4 protocol / IPv6 next header (after extension headers).
		// Each element can be an 8-bit unsigned decimal number (e.g.
		// "6"), range (e.g. "253-254"), or one of the following protocol
		// names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
		ip_protocols?: [...string]

		// BGP Autonomous System Number associated with the source IP
		// address.
		src_asns?: [...number]

		// Source IPv4/IPv6 addresses or CIDR prefixes, in standard text
		// format.
		src_ip_ranges?: [...string]

		// Source port numbers for TCP/UDP/SCTP. Each element can be a
		// 16-bit unsigned decimal number (e.g. "80") or range (e.g.
		// "0-1023").
		src_ports?: [...string]
		user_defined_fields?: matchN(1, [_#defs."/$defs/rules/$defs/network_match/$defs/user_defined_fields", [..._#defs."/$defs/rules/$defs/network_match/$defs/user_defined_fields"]])

		// Two-letter ISO 3166-1 alpha-2 country code associated with the
		// source IP address.
		src_region_codes?: [...string]
	})

	_#defs: "/$defs/rules/$defs/network_match/$defs/user_defined_fields": close({
		// Name of the user-defined field, as given in the definition.
		name?: string

		// Matching values of the field. Each element can be a 32-bit
		// unsigned decimal or hexadecimal (starting with "0x") number
		// (e.g. "64") or range (e.g. "0x400-0x7ff").
		values?: [...string]
	})

	_#defs: "/$defs/rules/$defs/preconfigured_waf_config": close({
		exclusion?: matchN(1, [_#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion", [..._#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion"]])
	})

	_#defs: "/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion": close({
		// A list of target rule IDs under the WAF rule set to apply the
		// preconfigured WAF exclusion.
		// If omitted, it refers to all the rule IDs under the WAF rule
		// set.
		target_rule_ids?: [...string]
		request_cookie?: matchN(1, [_#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie", [..._#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie"]])
		request_header?: matchN(1, [_#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header", [..._#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header"]])
		request_query_param?: matchN(1, [_#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param", [..._#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param"]])
		request_uri?: matchN(1, [_#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri", [..._#defs."/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri"]])

		// Target WAF rule set to apply the preconfigured WAF exclusion.
		target_rule_set!: string
	})

	_#defs: "/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_cookie": close({
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
		// value. Possible values: ["CONTAINS", "ENDS_WITH", "EQUALS",
		// "EQUALS_ANY", "STARTS_WITH"]
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_header": close({
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
		// value. Possible values: ["CONTAINS", "ENDS_WITH", "EQUALS",
		// "EQUALS_ANY", "STARTS_WITH"]
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_query_param": close({
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
		// value. Possible values: ["CONTAINS", "ENDS_WITH", "EQUALS",
		// "EQUALS_ANY", "STARTS_WITH"]
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rules/$defs/preconfigured_waf_config/$defs/exclusion/$defs/request_uri": close({
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
		// value. Possible values: ["CONTAINS", "ENDS_WITH", "EQUALS",
		// "EQUALS_ANY", "STARTS_WITH"]
		operator!: string

		// A request field matching the specified value will be excluded
		// from inspection during preconfigured WAF evaluation.
		// The field value must be given if the field operator is not
		// EQUALS_ANY, and cannot be given if the field operator is
		// EQUALS_ANY.
		value?: string
	})

	_#defs: "/$defs/rules/$defs/rate_limit_options": close({
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

		// Action to take for requests that are above the configured rate
		// limit threshold, to deny with a specified HTTP response code.
		// Valid options are deny(STATUS), where valid values for STATUS
		// are 403, 404, 429, and 502.
		exceed_action?: string
		ban_threshold?: matchN(1, [_#defs."/$defs/rules/$defs/rate_limit_options/$defs/ban_threshold", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rate_limit_options/$defs/ban_threshold"]])
		enforce_on_key_configs?: matchN(1, [_#defs."/$defs/rules/$defs/rate_limit_options/$defs/enforce_on_key_configs", [..._#defs."/$defs/rules/$defs/rate_limit_options/$defs/enforce_on_key_configs"]])
		rate_limit_threshold?: matchN(1, [_#defs."/$defs/rules/$defs/rate_limit_options/$defs/rate_limit_threshold", list.MaxItems(1) & [..._#defs."/$defs/rules/$defs/rate_limit_options/$defs/rate_limit_threshold"]])
	})

	_#defs: "/$defs/rules/$defs/rate_limit_options/$defs/ban_threshold": close({
		// Number of HTTP(S) requests for calculating the threshold.
		count?: number

		// Interval over which the threshold is computed.
		interval_sec?: number
	})

	_#defs: "/$defs/rules/$defs/rate_limit_options/$defs/enforce_on_key_configs": close({
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

	_#defs: "/$defs/rules/$defs/rate_limit_options/$defs/rate_limit_threshold": close({
		// Number of HTTP(S) requests for calculating the threshold.
		count?: number

		// Interval over which the threshold is computed.
		interval_sec?: number
	})
}
