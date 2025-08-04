package data

#cloudflare_email_security_block_senders: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_block_senders")
	close({
		account_id!: string
		direction?:  string
		result?: matchN(1, [close({
			comments?:      string
			created_at?:    string
			id?:            number
			is_regex?:      bool
			last_modified?: string
			pattern?:       string
			pattern_type?:  string
		}), [...close({
			comments?:      string
			created_at?:    string
			id?:            number
			is_regex?:      bool
			last_modified?: string
			pattern?:       string
			pattern_type?:  string
		})]])
		max_items?:    number
		order?:        string
		pattern?:      string
		pattern_type?: string
		search?:       string
	})
}
