package data

#cloudflare_page_shield_cookies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_page_shield_cookies")
	close({
		// Identifier
		cookie_id!:         string
		domain_attribute?:  string
		expires_attribute?: string

		// Identifier
		id?:            string
		first_seen_at?: string
		host?:          string

		// Available values: "lax", "strict", "none".
		same_site_attribute?: string
		http_only_attribute?: bool
		last_seen_at?:        string
		max_age_attribute?:   number
		name?:                string
		page_urls?: [...string]
		path_attribute?: string

		// Available values: "first_party", "unknown".
		type?: string

		// Identifier
		zone_id!:          string
		secure_attribute?: bool
	})
}
