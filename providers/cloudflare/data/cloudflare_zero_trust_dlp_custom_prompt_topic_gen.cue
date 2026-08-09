package data

cloudflare_zero_trust_dlp_custom_prompt_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_custom_prompt_topic")
	close({
		account_id!:  string
		created_at?:  string
		description?: string
		entry_id!:    string
		id?:          string
		name?:        string
		topic?:       string
		updated_at?:  string
	})
}
