package data

#cloudflare_email_security_trusted_domains_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_trusted_domains_list")
	close({
		account_id!: string
		direction?:  string
		result?: matchN(1, [close({
			comments?:      string
			created_at?:    string
			id?:            number
			is_recent?:     bool
			is_regex?:      bool
			is_similarity?: bool
			last_modified?: string
			pattern?:       string
		}), [...close({
			comments?:      string
			created_at?:    string
			id?:            number
			is_recent?:     bool
			is_regex?:      bool
			is_similarity?: bool
			last_modified?: string
			pattern?:       string
		})]])
		is_recent?:     bool
		is_similarity?: bool
		max_items?:     number
		order?:         string
		pattern?:       string
		search?:        string
	})
}
