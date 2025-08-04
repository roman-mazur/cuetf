package data

#cloudflare_page_shield_cookies_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_cookies_list")
	close({
		direction?: string
		domain?:    string
		export?:    string
		hosts?:     string
		http_only?: bool
		max_items?: number
		result?: matchN(1, [close({
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
		}), [...close({
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
		})]])
		name?:      string
		order_by?:  string
		page?:      string
		page_url?:  string
		path?:      string
		per_page?:  number
		same_site?: string
		secure?:    bool
		type?:      string
		zone_id!:   string
	})
}
