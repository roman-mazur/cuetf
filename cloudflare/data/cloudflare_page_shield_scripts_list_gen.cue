package data

#cloudflare_page_shield_scripts_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_scripts_list")
	close({
		direction?:          string
		exclude_cdn_cgi?:    bool
		exclude_duplicates?: bool
		exclude_urls?:       string
		export?:             string
		result?: matchN(1, [close({
			added_at?:                  string
			cryptomining_score?:        number
			dataflow_score?:            number
			domain_reported_malicious?: bool
			fetched_at?:                string
			first_page_url?:            string
			first_seen_at?:             string
			hash?:                      string
			host?:                      string
			id?:                        string
			js_integrity_score?:        number
			last_seen_at?:              string
			magecart_score?:            number
			malicious_domain_categories?: [...string]
			malicious_url_categories?: [...string]
			malware_score?:     number
			obfuscation_score?: number
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		}), [...close({
			added_at?:                  string
			cryptomining_score?:        number
			dataflow_score?:            number
			domain_reported_malicious?: bool
			fetched_at?:                string
			first_page_url?:            string
			first_seen_at?:             string
			hash?:                      string
			host?:                      string
			id?:                        string
			js_integrity_score?:        number
			last_seen_at?:              string
			magecart_score?:            number
			malicious_domain_categories?: [...string]
			malicious_url_categories?: [...string]
			malware_score?:     number
			obfuscation_score?: number
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		})]])
		hosts?:                string
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
