package res

#cloudflare_zero_trust_dlp_custom_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_custom_entry")
	close({
		account_id!:     string
		case_sensitive?: bool
		created_at?:     string
		enabled!:        bool
		id?:             string
		name!:           string
		profile_id!:     string
		confidence?: close({
			ai_context_available?: bool
			available?:            bool
		})
		secret?: bool
		type?:   string
		pattern!: close({
			regex!: string
		})
		updated_at?: string
		word_list?:  string
	})
}
