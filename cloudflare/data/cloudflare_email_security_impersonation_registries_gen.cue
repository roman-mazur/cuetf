package data

#cloudflare_email_security_impersonation_registries: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_impersonation_registries")
	close({
		account_id!: string
		direction?:  string
		result?: matchN(1, [close({
			comments?:          string
			created_at?:        string
			directory_id?:      number
			directory_node_id?: number
			email?:             string
			id?:                number
			is_email_regex?:    bool
			last_modified?:     string
			name?:              string
			provenance?:        string
		}), [...close({
			comments?:          string
			created_at?:        string
			directory_id?:      number
			directory_node_id?: number
			email?:             string
			id?:                number
			is_email_regex?:    bool
			last_modified?:     string
			name?:              string
			provenance?:        string
		})]])
		max_items?:  number
		order?:      string
		provenance?: string
		search?:     string
	})
}
