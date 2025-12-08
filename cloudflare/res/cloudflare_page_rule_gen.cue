package res

#cloudflare_page_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_page_rule")
	close({
		// The timestamp of when the Page Rule was created.
		created_on?: string

		// Identifier.
		id?: string

		// The timestamp of when the Page Rule was last modified.
		modified_on?: string

		// The priority of the rule, used to define which Page Rule is
		// processed
		// over another. A higher number indicates a higher priority. For
		// example,
		// if you have a catch-all Page Rule (rule A: `/images/*`) but
		// want a more
		// specific Page Rule to take precedence (rule B:
		// `/images/special/*`),
		// specify a higher priority for rule B so it overrides rule A.
		priority?: number

		// The status of the Page Rule.
		// Available values: "active", "disabled".
		status?: string
		actions!: close({
			always_use_https?:         bool
			automatic_https_rewrites?: string
			browser_cache_ttl?:        number
			browser_check?:            string
			bypass_cache_on_cookie?:   string
			cache_by_device_type?:     string
			cache_deception_armor?:    string
			cache_level?:              string
			cache_on_cookie?:          string
			cache_ttl_by_status?: [string]: string
			disable_apps?:        bool
			disable_performance?: bool
			disable_security?:    bool
			disable_zaraz?:       bool
			edge_cache_ttl?:      number
			email_obfuscation?:   string
			cache_key_fields?: close({
				cookie?: close({
					check_presence?: [...string]
					include?: [...string]
				})
				header?: close({
					check_presence?: [...string]
					exclude?: [...string]
					include?: [...string]
				})
				host?: close({
					resolved?: bool
				})
				query_string?: close({
					exclude?: [...string]
					include?: [...string]
				})
				user?: close({
					device_type?: bool
					geo?:         bool
					lang?:        bool
				})
			})
			explicit_cache_control?:      string
			host_header_override?:        string
			ip_geolocation?:              string
			mirage?:                      string
			opportunistic_encryption?:    string
			origin_error_page_pass_thru?: string
			polish?:                      string
			resolve_override?:            string
			respect_strong_etag?:         string
			response_buffering?:          string
			rocket_loader?:               string
			security_level?:              string
			forwarding_url?: close({
				status_code!: number
				url!:         string
			})
			sort_query_string_for_cache?: string
			ssl?:                         string
			true_client_ip_header?:       string
			waf?:                         string
		})
		target!: string

		// Identifier.
		zone_id!: string
	})
}
