package res

#cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_block_sender")
	close({
		// Identifier.
		account_id?: string
		comments?:   string
		created_at?: string

		// Blocked sender pattern identifier
		id?:          string
		is_regex!:    bool
		modified_at?: string
		pattern!:     string

		// Type of pattern matching.
		// Note: UNKNOWN is deprecated and cannot be used when creating or
		// updating policies, but may be returned for existing entries.
		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type!: string
	})
}
