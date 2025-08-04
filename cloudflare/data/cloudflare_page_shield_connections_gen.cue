package data

#cloudflare_page_shield_connections: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_connections")
	close({
		added_at?: string

		// Identifier
		connection_id!:             string
		domain_reported_malicious?: bool
		first_page_url?:            string
		first_seen_at?:             string
		host?:                      string

		// Identifier
		id?:           string
		last_seen_at?: string

		// Identifier
		zone_id!: string
		malicious_domain_categories?: [...string]
		malicious_url_categories?: [...string]
		page_urls?: [...string]
		url?:                       string
		url_contains_cdn_cgi_path?: bool
		url_reported_malicious?:    bool
	})
}
