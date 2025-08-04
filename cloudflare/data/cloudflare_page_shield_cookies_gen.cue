package data

#cloudflare_page_shield_cookies: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_cookies")
	close({
		cookie_id!:           string
		domain_attribute?:    string
		expires_attribute?:   string
		first_seen_at?:       string
		host?:                string
		http_only_attribute?: bool
		id?:                  string
		last_seen_at?:        string
		max_age_attribute?:   number
		name?:                string
		page_urls?: [...string]
		path_attribute?:      string
		same_site_attribute?: string
		secure_attribute?:    bool
		type?:                string
		zone_id!:             string
	})
}
