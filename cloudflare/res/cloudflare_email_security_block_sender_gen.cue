package res

#cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_block_sender")
	close({
		// Account Identifier
		account_id!: string

		// The unique identifier for the allow policy.
		id?:            number
		comments?:      string
		created_at?:    string
		is_regex!:      bool
		last_modified?: string
		pattern!:       string

		// Available values: "EMAIL", "DOMAIN", "IP", "UNKNOWN".
		pattern_type!: string
	})
}
