package data

#cloudflare_email_security_block_sender: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_block_sender")
	close({
		account_id!:    string
		comments?:      string
		created_at?:    string
		id?:            number
		is_regex?:      bool
		last_modified?: string
		pattern?:       string
		filter?: close({
			direction?:    string
			order?:        string
			pattern?:      string
			pattern_type?: string
			search?:       string
		})
		pattern_id?:   number
		pattern_type?: string
	})
}
