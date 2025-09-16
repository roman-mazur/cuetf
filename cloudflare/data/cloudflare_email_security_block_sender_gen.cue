package data

#cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_block_sender")
	close({
		// Account Identifier
		account_id!: string
		comments?:   string
		created_at?: string

		// The unique identifier for the allow policy.
		id?: number

		// The unique identifier for the allow policy.
		pattern_id?:    number
		is_regex?:      bool
		last_modified?: string
		pattern?:       string
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// The field to sort by.
			// Available values: "pattern", "created_at".
			order?:   string
			pattern?: string

			// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
			pattern_type?: string

			// Allows searching in multiple properties of a record
			// simultaneously.
			// This parameter is intended for human users, not automation. Its
			// exact
			// behavior is intentionally left unspecified and is subject to
			// change
			// in the future.
			search?: string
		})

		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type?: string
	})
}
