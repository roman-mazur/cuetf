package data

#cloudflare_zero_trust_dlp_sensitivity_level: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_sensitivity_level")
	close({
		account_id!:           string
		created_at?:           string
		description?:          string
		id?:                   string
		name?:                 string
		sensitivity_group_id!: string
		sensitivity_level_id!: string
		updated_at?:           string
	})
}
