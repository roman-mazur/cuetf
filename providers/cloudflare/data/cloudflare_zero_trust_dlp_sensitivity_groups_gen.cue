package data

#cloudflare_zero_trust_dlp_sensitivity_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_sensitivity_groups")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?:  string
			description?: string
			id?:          string
			name?:        string
			template_id?: string
			updated_at?:  string
			levels?: matchN(1, [close({
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
		}), [...close({
			created_at?:  string
			description?: string
			id?:          string
			name?:        string
			template_id?: string
			updated_at?:  string
			levels?: matchN(1, [close({
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
		})]])
	})
}
