package data

#cloudflare_rulesets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_rulesets")
	close({
		// The items returned by the data source
		result?: matchN(1, [close({
			// An informative description of the ruleset.
			description?: string

			// The unique ID of the ruleset.
			id?: string

			// The kind of the ruleset.
			// Available values: "managed", "custom", "root", "zone".
			kind?: string

			// The human-readable name of the ruleset.
			name?: string

			// The phase of the ruleset.
			// Available values: "ddos_l4", "ddos_l7", "http_config_settings",
			// "http_custom_errors", "http_log_custom_fields",
			// "http_ratelimit", "http_request_cache_settings",
			// "http_request_dynamic_redirect",
			// "http_request_firewall_custom",
			// "http_request_firewall_managed",
			// "http_request_late_transform", "http_request_origin",
			// "http_request_redirect", "http_request_sanitize",
			// "http_request_sbfm", "http_request_transform",
			// "http_response_compression", "http_response_firewall_managed",
			// "http_response_headers_transform", "magic_transit",
			// "magic_transit_ids_managed", "magic_transit_managed",
			// "magic_transit_ratelimit".
			phase?: string
		}), [...close({
			// An informative description of the ruleset.
			description?: string

			// The unique ID of the ruleset.
			id?: string

			// The kind of the ruleset.
			// Available values: "managed", "custom", "root", "zone".
			kind?: string

			// The human-readable name of the ruleset.
			name?: string

			// The phase of the ruleset.
			// Available values: "ddos_l4", "ddos_l7", "http_config_settings",
			// "http_custom_errors", "http_log_custom_fields",
			// "http_ratelimit", "http_request_cache_settings",
			// "http_request_dynamic_redirect",
			// "http_request_firewall_custom",
			// "http_request_firewall_managed",
			// "http_request_late_transform", "http_request_origin",
			// "http_request_redirect", "http_request_sanitize",
			// "http_request_sbfm", "http_request_transform",
			// "http_response_compression", "http_response_firewall_managed",
			// "http_response_headers_transform", "magic_transit",
			// "magic_transit_ids_managed", "magic_transit_managed",
			// "magic_transit_ratelimit".
			phase?: string
		})]])

		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
