package res

cloudflare_zero_trust_dlp_data_class: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_data_class")
	close({
		account_id!: string
		created_at?: string
		data_tags!: [...string]
		description?: string
		expression!:  string
		id?:          string
		name!:        string
		sensitivity_levels!: matchN(1, [close({
			group_id!: string
			level_id!: string
		}), [...close({
			group_id!: string
			level_id!: string
		})]])
		updated_at?: string
	})
}
