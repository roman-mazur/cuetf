package res

#cloudflare_zero_trust_dlp_predefined_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_predefined_entry")
	close({
		account_id!: string
		enabled!:    bool
		entry_id!:   string
		id?:         string
		name?:       string
		profile_id?: string
		confidence?: close({
			ai_context_available?: bool
			available?:            bool
		})
	})
}
