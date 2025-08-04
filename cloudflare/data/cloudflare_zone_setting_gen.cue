package data

#cloudflare_zone_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_setting")
	close({
		// Whether or not this setting can be modified for this zone
		// (based on your Cloudflare plan level).
		editable?: bool

		// ssl-recommender enrollment setting.
		enabled?: bool

		// ID of the zone setting.
		// Available values: "0rtt", "advanced_ddos", "aegis",
		// "always_online", "always_use_https",
		// "automatic_https_rewrites", "brotli", "browser_cache_ttl",
		// "browser_check", "cache_level", "challenge_ttl",
		// "china_network_enabled", "ciphers", "cname_flattening",
		// "development_mode", "early_hints", "edge_cache_ttl",
		// "email_obfuscation", "h2_prioritization",
		// "hotlink_protection", "http2", "http3", "image_resizing",
		// "ip_geolocation", "ipv6", "max_upload", "min_tls_version",
		// "mirage", "nel", "opportunistic_encryption",
		// "opportunistic_onion", "orange_to_orange",
		// "origin_error_page_pass_thru", "origin_h2_max_streams",
		// "origin_max_http_version", "polish", "prefetch_preload",
		// "privacy_pass", "proxy_read_timeout", "pseudo_ipv4",
		// "replace_insecure_js", "response_buffering", "rocket_loader",
		// "automatic_platform_optimization", "security_header",
		// "security_level", "server_side_exclude", "sha1_support",
		// "sort_query_string_for_cache", "ssl", "ssl_recommender",
		// "tls_1_2_only", "tls_1_3", "tls_client_auth",
		// "transformations", "transformations_allowed_origins",
		// "true_client_ip_header", "waf", "webp", "websockets".
		id?: string

		// last time this setting was modified.
		modified_on?: string

		// Setting name
		setting_id!: string

		// Value of the zone setting.
		// Notes: The interval (in seconds) from when development mode
		// expires (positive integer) or last expired (negative integer)
		// for the domain. If development mode has never been enabled,
		// this value is false.
		time_remaining?: number

		// Current value of the zone setting.
		// Available values: "on", "off".
		value?: string

		// Identifier
		zone_id!: string
	})
}
