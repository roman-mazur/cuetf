package data

#cloudflare_page_shield_scripts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_scripts")
	close({
		added_at?:           string
		cryptomining_score?: number
		dataflow_score?:     number
		versions?: matchN(1, [close({
			cryptomining_score?: number
			dataflow_score?:     number
			fetched_at?:         string
			hash?:               string
			js_integrity_score?: number
			magecart_score?:     number
			malware_score?:      number
			obfuscation_score?:  number
		}), [...close({
			cryptomining_score?: number
			dataflow_score?:     number
			fetched_at?:         string
			hash?:               string
			js_integrity_score?: number
			magecart_score?:     number
			malware_score?:      number
			obfuscation_score?:  number
		})]])
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
		script_id!:                 string
		url?:                       string
		url_contains_cdn_cgi_path?: bool
		url_reported_malicious?:    bool
		zone_id!:                   string
	})
}
