package res

#cloudflare_email_security_trusted_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_trusted_domains")
	close({
		account_id!:    string
		comments?:      string
		created_at?:    string
		id?:            number
		is_recent?:     bool
		is_regex?:      bool
		is_similarity?: bool
		last_modified?: string
		pattern?:       string
		body?: matchN(1, [close({
			comments?:      string
			is_recent!:     bool
			is_regex!:      bool
			is_similarity!: bool
			pattern!:       string
		}), [...close({
			comments?:      string
			is_recent!:     bool
			is_regex!:      bool
			is_similarity!: bool
			pattern!:       string
		})]])
	})
}
