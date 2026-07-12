package data

cloudflare_zero_trust_dlp_sensitivity_level_order: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_sensitivity_level_order")
	close({
		account_id!: string
		id?:         string
		level_ids?: [...string]
		sensitivity_group_id!: string
	})
}
