package data

#cloudflare_page_shield_connections_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_connections_list")
	close({
		// The direction used to sort returned connections.
		// Available values: "asc", "desc".
		direction?: string

		// When true, excludes connections seen in a `/cdn-cgi` path from
		// the returned connections. The default value is true.
		exclude_cdn_cgi?: bool

		// Excludes connections whose URL contains one of the URL-encoded
		// URLs separated by commas.
		exclude_urls?: string

		// Export the list of connections as a file.
		// Available values: "csv".
		export?: string

		// Includes connections that match one or more URL-encoded
		// hostnames separated by commas.
		//
		// Wildcards are supported at the start and end of each hostname
		// to support starts with, ends with
		// and contains. If no wildcards are used, results will be
		// filtered by exact match
		hosts?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			added_at?:                  string
			domain_reported_malicious?: bool
			first_page_url?:            string
			first_seen_at?:             string
			host?:                      string

			// Identifier
			id?:           string
			last_seen_at?: string
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

			// Identifier
			id?:           string
			last_seen_at?: string
			malicious_domain_categories?: [...string]
			malicious_url_categories?: [...string]
			page_urls?: [...string]
			url?:                       string
			url_contains_cdn_cgi_path?: bool
			url_reported_malicious?:    bool
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// The field used to sort returned connections.
		// Available values: "first_seen_at", "last_seen_at".
		order_by?: string

		// The current page number of the paginated results.
		//
		// We additionally support a special value "all". When "all" is
		// used, the API will return all the connections
		// with the applied filters in a single page. This feature is
		// best-effort and it may only work for zones with
		// a low number of connections
		page?: string

		// Includes connections that match one or more page URLs
		// (separated by commas) where they were last seen
		//
		// Wildcards are supported at the start and end of each page URL
		// to support starts with, ends with
		// and contains. If no wildcards are used, results will be
		// filtered by exact match
		page_url?: string

		// The number of results per page.
		per_page?: number

		// When true, malicious connections appear first in the returned
		// connections.
		prioritize_malicious?: bool

		// Filters the returned connections using a comma-separated list
		// of connection statuses. Accepted values: `active`,
		// `infrequent`, and `inactive`. The default value is `active`.
		status?: string

		// Includes connections whose URL contain one or more URL-encoded
		// URLs separated by commas.
		urls?: string

		// Identifier
		zone_id!: string
	})
}
