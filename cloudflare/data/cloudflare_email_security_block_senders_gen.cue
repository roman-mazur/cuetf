package data

#cloudflare_email_security_block_senders: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_block_senders")
	close({
		// Account Identifier
		account_id!: string

		// The sorting direction.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The field to sort by.
		// Available values: "pattern", "created_at".
		order?: string

		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type?: string
		pattern?:      string

		// The items returned by the data source
		result?: matchN(1, [close({
			comments?: string

			// The unique identifier for the allow policy.
			id?:            number
			created_at?:    string
			is_regex?:      bool
			last_modified?: string

			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string
			pattern?:      string
		}), [...close({
			comments?: string

			// The unique identifier for the allow policy.
			id?:            number
			created_at?:    string
			is_regex?:      bool
			last_modified?: string

			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string
			pattern?:      string
		})]])

		// Allows searching in multiple properties of a record
		// simultaneously.
		// This parameter is intended for human users, not automation. Its
		// exact
		// behavior is intentionally left unspecified and is subject to
		// change
		// in the future.
		search?: string
	})
}
