package res

cloudflare_zero_trust_dlp_data_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_data_tag")
	close({
		account_id!:  string
		category_id!: string
		created_at?:  string
		description?: string
		id?:          string
		name!:        string
		updated_at?:  string
	})
}
