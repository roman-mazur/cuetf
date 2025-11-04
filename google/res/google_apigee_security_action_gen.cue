package res

import "list"

#google_apigee_security_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_security_action")
	close({
		// If unset, this would apply to all proxies in the environment.
		// If set, this action is enforced only if at least one proxy in
		// the repeated
		// list is deployed at the time of enforcement. If set, several
		// restrictions are enforced on SecurityActions.
		// There can be at most 100 enabled actions with proxies set in an
		// env.
		// Several other restrictions apply on conditions and are detailed
		// later.
		api_proxies?: [...string]

		// The create time for this SecurityAction.
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9 fractional digits.
		// Offsets other than "Z" are also accepted. Examples:
		// "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		create_time?: string

		// An optional user provided description of the SecurityAction.
		description?: string

		// The Apigee environment that this security action applies to.
		env_id!: string

		// The expiration for this SecurityAction.
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9
		// fractional digits. Offsets other than "Z" are also accepted.
		// Examples: "2014-10-02T15:01:23Z",
		// "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		expire_time?: string

		// The organization that this security action applies to.
		org_id!: string
		id?:     string
		allow?: matchN(1, [#allow, list.MaxItems(1) & [...#allow]])

		// The ID to use for the SecurityAction, which will become the
		// final component of the action's resource name.
		// This value should be 0-61 characters, and valid format is
		// (^a-z?$).
		security_action_id!: string
		condition_config!: matchN(1, [#condition_config, list.MaxItems(1) & [_, ...] & [...#condition_config]])
		deny?: matchN(1, [#deny, list.MaxItems(1) & [...#deny]])
		flag?: matchN(1, [#flag, list.MaxItems(1) & [...#flag]])
		timeouts?: #timeouts

		// Only an ENABLED SecurityAction is enforced. An ENABLED
		// SecurityAction past its expiration time will not be enforced.
		// Possible values: ["ENABLED", "DISABLED"]
		state!: string

		// The TTL for this SecurityAction.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		ttl?: string

		// The update time for this SecurityAction. This reflects when
		// this SecurityAction changed states.
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9 fractional digits.
		// Offsets other than "Z" are also accepted. Examples:
		// "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		update_time?: string
	})

	#allow: close({})

	#condition_config: close({
		// A list of accessTokens. Limit 1000 per action.
		access_tokens?: [...string]

		// A list of API keys. Limit 1000 per action.
		api_keys?: [...string]

		// A list of API Products. Limit 1000 per action.
		api_products?: [...string]

		// A list of ASN numbers to act on, e.g. 23.
		// https://en.wikipedia.org/wiki/Autonomous_system_(Internet)
		// This uses int64 instead of uint32 because of
		// https://linter.aip.dev/141/forbidden-types.
		asns?: [...string]

		// A list of Bot Reasons. Current options: Flooder, Brute Guessor,
		// Static Content Scraper,
		// OAuth Abuser, Robot Abuser, TorListRule, Advanced Anomaly
		// Detection, Advanced API Scraper,
		// Search Engine Crawlers, Public Clouds, Public Cloud AWS, Public
		// Cloud Azure, and Public Cloud Google.
		bot_reasons?: [...string]

		// A list of developer apps. Limit 1000 per action.
		developer_apps?: [...string]

		// A list of developers. Limit 1000 per action.
		developers?: [...string]

		// Act only on particular HTTP methods. E.g. A read-only API can
		// block POST/PUT/DELETE methods.
		// Accepted values are: GET, HEAD, POST, PUT, DELETE, CONNECT,
		// OPTIONS, TRACE and PATCH.
		http_methods?: [...string]

		// A list of IP addresses. This could be either IPv4 or IPv6.
		// Limited to 100 per action.
		ip_address_ranges?: [...string]

		// A list of countries/region codes to act on, e.g. US. This
		// follows https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
		region_codes?: [...string]

		// A list of user agents to deny. We look for exact matches. Limit
		// 50 per action.
		user_agents?: [...string]
	})

	#deny: close({
		// The HTTP response code if the Action = DENY.
		response_code?: number
	})

	#flag: close({
		headers?: matchN(1, [_#defs."/$defs/flag/$defs/headers", [..._#defs."/$defs/flag/$defs/headers"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/flag/$defs/headers": close({
		// The header name to be sent to the target.
		name?: string

		// The header value to be sent to the target.
		value?: string
	})
}
