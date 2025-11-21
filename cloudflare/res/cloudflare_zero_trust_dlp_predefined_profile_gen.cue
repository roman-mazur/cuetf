package res

#cloudflare_zero_trust_dlp_predefined_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_predefined_profile")
	close({
		account_id!:          string
		ai_context_enabled?:  bool
		allowed_match_count?: number

		// The name of the predefined profile.
		name?:                 string
		confidence_threshold?: string
		enabled_entries?: [...string]

		// Whether this profile can be accessed by anyone.
		open_access?: bool
		id?:          string
		ocr_enabled?: bool
		profile_id!:  string
	})
}
