package data

#cloudflare_zero_trust_dlp_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_entry")
	close({
		confidence?: close({
			ai_context_available?: bool
			available?:            bool
		})
		account_id!:     string
		case_sensitive?: bool
		created_at?:     string
		enabled?:        bool
		entry_id?:       string
		id?:             string
		name?:           string
		profile_id?:     string
		pattern?: close({
			regex?: string
		})
		secret?:     bool
		type?:       string
		updated_at?: string
		word_list?:  string
	})
}
