package res

#cloudflare_zero_trust_dlp_predefined_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_predefined_profile")
	close({
		account_id!:           string
		ai_context_enabled?:   bool
		allowed_match_count?:  number
		confidence_threshold?: string
		created_at?:           string
		description?:          string
		id?:                   string
		name?:                 string
		ocr_enabled?:          bool
		open_access?:          bool
		profile_id!:           string
		type?:                 string
		updated_at?:           string
	})
}
