package data

#cloudflare_page_shield_scripts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_scripts")
	close({
		added_at?: string

		// The cryptomining score of the JavaScript content.
		cryptomining_score?: number

		// The dataflow score of the JavaScript content.
		dataflow_score?: number
		versions?: matchN(1, [close({
			// The cryptomining score of the JavaScript content.
			cryptomining_score?: number

			// The dataflow score of the JavaScript content.
			dataflow_score?: number

			// The timestamp of when the script was last fetched.
			fetched_at?: string

			// The computed hash of the analyzed script.
			hash?: string

			// The integrity score of the JavaScript content.
			js_integrity_score?: number

			// The magecart score of the JavaScript content.
			magecart_score?: number

			// The malware score of the JavaScript content.
			malware_score?: number

			// The obfuscation score of the JavaScript content.
			obfuscation_score?: number
		}), [...close({
			// The cryptomining score of the JavaScript content.
			cryptomining_score?: number

			// The dataflow score of the JavaScript content.
			dataflow_score?: number

			// The timestamp of when the script was last fetched.
			fetched_at?: string

			// The computed hash of the analyzed script.
			hash?: string

			// The integrity score of the JavaScript content.
			js_integrity_score?: number

			// The magecart score of the JavaScript content.
			magecart_score?: number

			// The malware score of the JavaScript content.
			malware_score?: number

			// The obfuscation score of the JavaScript content.
			obfuscation_score?: number
		})]])
		domain_reported_malicious?: bool

		// The timestamp of when the script was last fetched.
		fetched_at?:     string
		first_page_url?: string
		first_seen_at?:  string

		// The computed hash of the analyzed script.
		hash?: string
		host?: string

		// Identifier
		id?: string

		// The integrity score of the JavaScript content.
		js_integrity_score?: number
		last_seen_at?:       string

		// The magecart score of the JavaScript content.
		magecart_score?: number

		// The malware score of the JavaScript content.
		malware_score?: number
		malicious_domain_categories?: [...string]
		malicious_url_categories?: [...string]

		// The obfuscation score of the JavaScript content.
		obfuscation_score?: number
		page_urls?: [...string]

		// Identifier
		script_id!:                 string
		url?:                       string
		url_contains_cdn_cgi_path?: bool
		url_reported_malicious?:    bool

		// Identifier
		zone_id!: string
	})
}
