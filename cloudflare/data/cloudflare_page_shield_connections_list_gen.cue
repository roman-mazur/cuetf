package data

#cloudflare_page_shield_connections_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_connections_list")
	close({
		direction?:       string
		exclude_cdn_cgi?: bool
		exclude_urls?:    string
		export?:          string
		hosts?:           string
		result?: matchN(1, [close({
			added_at?:                  string
			domain_reported_malicious?: bool
			first_page_url?:            string
			first_seen_at?:             string
			host?:                      string
			id?:                        string
			last_seen_at?:              string
			malicious_domain_categories?: [...string]
			malicious_url_categories?: [...string]
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		}), [...close({
			added_at?:                  string
			domain_reported_malicious?: bool
			first_page_url?:            string
			first_seen_at?:             string
			host?:                      string
			id?:                        string
			last_seen_at?:              string
			malicious_domain_categories?: [...string]
			malicious_url_categories?: [...string]
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		})]])
		max_items?:            number
		order_by?:             string
		page?:                 string
		page_url?:             string
		per_page?:             number
		prioritize_malicious?: bool
		status?:               string
		urls?:                 string
		zone_id!:              string
	})
}
