package data

#cloudflare_zero_trust_dlp_data_tag_category: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_data_tag_category")
	close({
		account_id!:  string
		category_id!: string
		created_at?:  string
		description?: string
		id?:          string
		name?:        string
		template_id?: string
		updated_at?:  string
		tags?: matchN(1, [close({
			created_at?:  string
			description?: string
			id?:          string
			name?:        string
			updated_at?:  string
		}), [...close({
			created_at?:  string
			description?: string
			id?:          string
			name?:        string
			updated_at?:  string
		})]])
	})
}
