package data

#cloudflare_zero_trust_dlp_data_classes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_data_classes")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string
			data_tags?: [...string]
			description?: string
			expression?:  string
			id?:          string
			name?:        string
			updated_at?:  string
			sensitivity_levels?: matchN(1, [close({
				group_id?: string
				level_id?: string
			}), [...close({
				group_id?: string
				level_id?: string
			})]])
		}), [...close({
			created_at?: string
			data_tags?: [...string]
			description?: string
			expression?:  string
			id?:          string
			name?:        string
			updated_at?:  string
			sensitivity_levels?: matchN(1, [close({
				group_id?: string
				level_id?: string
			}), [...close({
				group_id?: string
				level_id?: string
			})]])
		})]])
	})
}
