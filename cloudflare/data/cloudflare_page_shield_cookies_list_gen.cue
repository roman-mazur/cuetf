package data

#cloudflare_page_shield_cookies_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_page_shield_cookies_list")
	close({
		// The direction used to sort returned cookies.'
		// Available values: "asc", "desc".
		direction?: string

		// Filters the returned cookies that match the specified domain
		// attribute
		domain?: string

		// Export the list of cookies as a file, limited to 50000 entries.
		// Available values: "csv".
		export?: string

		// Includes cookies that match one or more URL-encoded hostnames
		// separated by commas.
		//
		// Wildcards are supported at the start and end of each hostname
		// to support starts with, ends with
		// and contains. If no wildcards are used, results will be
		// filtered by exact match
		hosts?: string

		// Filters the returned cookies that are set with HttpOnly
		http_only?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// Filters the returned cookies that match the specified name.
		// Wildcards are supported at the start and end to support starts
		// with, ends with
		// and contains. e.g. session*
		name?: string

		// The items returned by the data source
		result?: matchN(1, [close({
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
			type?:             string
			secure_attribute?: bool
		}), [...close({
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
			type?:             string
			secure_attribute?: bool
		})]])

		// The field used to sort returned cookies.
		// Available values: "first_seen_at", "last_seen_at".
		order_by?: string

		// The current page number of the paginated results.
		//
		// We additionally support a special value "all". When "all" is
		// used, the API will return all the cookies
		// with the applied filters in a single page. This feature is
		// best-effort and it may only work for zones with
		// a low number of cookies
		page?: string

		// Includes connections that match one or more page URLs
		// (separated by commas) where they were last seen
		//
		// Wildcards are supported at the start and end of each page URL
		// to support starts with, ends with
		// and contains. If no wildcards are used, results will be
		// filtered by exact match
		page_url?: string

		// Filters the returned cookies that match the specified path
		// attribute
		path?: string

		// The number of results per page.
		per_page?: number

		// Filters the returned cookies that match the specified same_site
		// attribute
		// Available values: "lax", "strict", "none".
		same_site?: string

		// Filters the returned cookies that are set with Secure
		secure?: bool

		// Filters the returned cookies that match the specified type
		// attribute
		// Available values: "first_party", "unknown".
		type?: string

		// Identifier
		zone_id!: string
	})
}
