package data

#cloudflare_zero_trust_access_custom_pages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_custom_pages")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			app_count?:  number
			created_at?: string
			name?:       string
			type?:       string
			uid?:        string
			updated_at?: string
		}), [...close({
			app_count?:  number
			created_at?: string
			name?:       string
			type?:       string
			uid?:        string
			updated_at?: string
		})]])
	})
}
