package data

cloudflare_email_security_block_senders: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_block_senders")
	close({
		// Identifier.
		account_id?: string

		// The sorting direction.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to sort by.
		// Available values: "pattern", "created_at".
		order?: string

		// Filter by pattern value.
		pattern?: string

		// Filter by pattern type.
		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			comments?: string

			// Blocked sender pattern identifier
			id?:         string
			created_at?: string

			// Type of pattern matching.
			// Note: UNKNOWN is deprecated and cannot be used when creating or updating
			// policies, but may be returned for existing entries.
			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string
			is_regex?:     bool
			modified_at?:  string
			pattern?:      string
		}), [...close({
			comments?: string

			// Blocked sender pattern identifier
			id?:         string
			created_at?: string

			// Type of pattern matching.
			// Note: UNKNOWN is deprecated and cannot be used when creating or updating
			// policies, but may be returned for existing entries.
			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string
			is_regex?:     bool
			modified_at?:  string
			pattern?:      string
		})]])

		// Search term for filtering records. Behavior may change.
		search?: string
	})
}
