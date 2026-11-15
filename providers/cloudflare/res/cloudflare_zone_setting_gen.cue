package res

cloudflare_zone_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zone_setting")
	close({
		// For `id: 0rtt` or `id: advanced_ddos` or `id: always_online` or `id:
		// always_use_https` or `id: automatic_https_rewrites` or `id: brotli` or `id:
		// browser_cache_ttl` or `id: browser_check` or `id: cache_level` or `id:
		// challenge_ttl` or `id: china_network_enabled` or `id: content_converter` or
		// `id: ciphers` or `id: cname_flattening` or `id: development_mode` or `id:
		// early_hints` or `id: edge_cache_ttl` or `id: email_obfuscation` or `id:
		// h2_prioritization` or `id: hotlink_protection` or `id: http2` or `id: http3`
		// or `id: image_resizing` or `id: ip_geolocation` or `id: ipv6` or `id:
		// max_upload` or `id: min_tls_version` or `id: mirage` or `id: nel` or `id:
		// opportunistic_encryption` or `id: opportunistic_onion` or `id:
		// orange_to_orange` or `id: origin_error_page_pass_thru` or `id: polish` or
		// `id: prefetch_preload` or `id: pre_render` or `id: privacy_pass` or `id:
		// proxy_read_timeout` or `id: pseudo_ipv4` or `id: redirects_for_ai_training`
		// or `id: replace_insecure_js` or `id: response_buffering` or `id:
		// rocket_loader` or `id: automatic_platform_optimization` or `id:
		// search_for_agents` or `id: security_header` or `id: security_level` or `id:
		// server_side_exclude` or `id: sha1_support` or `id:
		// sort_query_string_for_cache` or `id: ssl` or `id: tls_1_2_only` or `id:
		// tls_1_3` or `id: tls_client_auth` or `id: transformations` or `id:
		// transformations_allowed_origins` or `id: true_client_ip_header` or `id: waf`
		// or `id: webmcp_enabled` or `id: webmcp_mcp_url` or `id: webmcp_packs` or
		// `id: webp` or `id: avif` or `id: websockets`: Whether or not this setting
		// can be modified for this zone (based on your Cloudflare plan level).
		editable?: bool

		// ssl-recommender enrollment setting.
		enabled?: bool

		// Setting name
		id?: string

		// For `id: 0rtt` or `id: advanced_ddos` or `id: always_online` or `id:
		// always_use_https` or `id: automatic_https_rewrites` or `id: brotli` or `id:
		// browser_cache_ttl` or `id: browser_check` or `id: cache_level` or `id:
		// challenge_ttl` or `id: china_network_enabled` or `id: content_converter` or
		// `id: ciphers` or `id: cname_flattening` or `id: development_mode` or `id:
		// early_hints` or `id: edge_cache_ttl` or `id: email_obfuscation` or `id:
		// h2_prioritization` or `id: hotlink_protection` or `id: http2` or `id: http3`
		// or `id: image_resizing` or `id: ip_geolocation` or `id: ipv6` or `id:
		// max_upload` or `id: min_tls_version` or `id: mirage` or `id: nel` or `id:
		// opportunistic_encryption` or `id: opportunistic_onion` or `id:
		// orange_to_orange` or `id: origin_error_page_pass_thru` or `id: polish` or
		// `id: prefetch_preload` or `id: pre_render` or `id: privacy_pass` or `id:
		// proxy_read_timeout` or `id: pseudo_ipv4` or `id: redirects_for_ai_training`
		// or `id: replace_insecure_js` or `id: response_buffering` or `id:
		// rocket_loader` or `id: automatic_platform_optimization` or `id:
		// search_for_agents` or `id: security_header` or `id: security_level` or `id:
		// server_side_exclude` or `id: sha1_support` or `id:
		// sort_query_string_for_cache` or `id: ssl` or `id: tls_1_2_only` or `id:
		// tls_1_3` or `id: tls_client_auth` or `id: transformations` or `id:
		// transformations_allowed_origins` or `id: true_client_ip_header` or `id: waf`
		// or `id: webmcp_enabled` or `id: webmcp_mcp_url` or `id: webmcp_packs` or
		// `id: webp` or `id: avif` or `id: websockets`: last time this setting was
		// modified.
		//
		// For `id: aegis` or `id: origin_h2_max_streams` or `id:
		// origin_max_http_version`: Last time this setting was modified.
		modified_on?: string

		// Setting name
		setting_id!: string

		// For `id: development_mode`: Value of the zone setting.
		// Notes: The interval (in seconds) from when development mode expires (positive
		// integer) or last expired (negative integer) for the domain. If development
		// mode has never been enabled, this value is false.
		time_remaining?: number

		// Current value of the zone setting.
		value!: _

		// Identifier
		zone_id!: string
	})
}
