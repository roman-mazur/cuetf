package data

#cloudflare_page_shield_scripts_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_scripts_list")
	close({
		// The direction used to sort returned scripts.
		// Available values: "asc", "desc".
		direction?: string

		// When true, excludes scripts seen in a `/cdn-cgi` path from the
		// returned scripts. The default value is true.
		exclude_cdn_cgi?: bool

		// When true, excludes duplicate scripts. We consider a script
		// duplicate of another if their javascript
		// content matches and they share the same url host and zone
		// hostname. In such case, we return the most
		// recent script for the URL host and zone hostname combination.
		exclude_duplicates?: bool

		// Excludes scripts whose URL contains one of the URL-encoded URLs
		// separated by commas.
		exclude_urls?: string

		// Export the list of scripts as a file, limited to 50000 entries.
		// Available values: "csv".
		export?: string

		// Includes scripts that match one or more URL-encoded hostnames
		// separated by commas.
		//
		// Wildcards are supported at the start and end of each hostname
		// to support starts with, ends with
		// and contains. If no wildcards are used, results will be
		// filtered by exact match
		hosts?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The field used to sort returned scripts.
		// Available values: "first_seen_at", "last_seen_at".
		order_by?: string

		// The current page number of the paginated results.
		//
		// We additionally support a special value "all". When "all" is
		// used, the API will return all the scripts
		// with the applied filters in a single page. This feature is
		// best-effort and it may only work for zones with
		// a low number of scripts
		page?: string

		// Includes scripts that match one or more page URLs (separated by
		// commas) where they were last seen
		//
		// Wildcards are supported at the start and end of each page URL
		// to support starts with, ends with
		// and contains. If no wildcards are used, results will be
		// filtered by exact match
		page_url?: string

		// The number of results per page.
		per_page?: number

		// When true, malicious scripts appear first in the returned
		// scripts.
		prioritize_malicious?: bool

		// The items returned by the data source
		result?: matchN(1, [close({
			added_at?: string

			// The cryptomining score of the JavaScript content.
			cryptomining_score?: number

			// The dataflow score of the JavaScript content.
			dataflow_score?:            number
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
			malicious_domain_categories?: [...string]

			// The malware score of the JavaScript content.
			malware_score?: number
			malicious_url_categories?: [...string]

			// The obfuscation score of the JavaScript content.
			obfuscation_score?: number
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		}), [...close({
			added_at?: string

			// The cryptomining score of the JavaScript content.
			cryptomining_score?: number

			// The dataflow score of the JavaScript content.
			dataflow_score?:            number
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
			malicious_domain_categories?: [...string]

			// The malware score of the JavaScript content.
			malware_score?: number
			malicious_url_categories?: [...string]

			// The obfuscation score of the JavaScript content.
			obfuscation_score?: number
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		})]])

		// Filters the returned scripts using a comma-separated list of
		// scripts statuses. Accepted values: `active`, `infrequent`, and
		// `inactive`. The default value is `active`.
		status?: string

		// Includes scripts whose URL contain one or more URL-encoded URLs
		// separated by commas.
		urls?: string

		// Identifier
		zone_id!: string
	})
}
