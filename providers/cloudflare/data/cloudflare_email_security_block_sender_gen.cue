package data

#cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_block_sender")
	close({
		// Identifier.
		account_id?: string
		comments?:   string
		created_at?: string

		// Blocked sender pattern identifier
		id?:          string
		is_regex?:    bool
		modified_at?: string
		pattern?:     string

		// Blocked sender pattern identifier
		pattern_id?: string

		// Type of pattern matching.
		// Note: UNKNOWN is deprecated and cannot be used when creating or
		// updating policies, but may be returned for existing entries.
		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type?: string
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// Field to sort by.
			// Available values: "pattern", "created_at".
			order?: string

			// Filter by pattern value.
			pattern?: string

			// Filter by pattern type.
			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string

			// Search term for filtering records. Behavior may change.
			search?: string
		})
	})
}
