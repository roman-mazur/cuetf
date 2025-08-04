package res

#cloudflare_zero_trust_dlp_predefined_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_predefined_profile")
	close({
		// When the profile was created.
		created_at?: string
		account_id!: string

		// The description of the profile.
		description?:        string
		ai_context_enabled?: bool

		// The id of the profile (uuid).
		id?:                   string
		allowed_match_count?:  number
		confidence_threshold?: string

		// The name of the profile.
		name?: string

		// Whether this profile can be accessed by anyone.
		open_access?: bool

		// Available values: "custom", "predefined", "integration".
		type?:        string
		ocr_enabled?: bool

		// When the profile was lasted updated.
		updated_at?: string
		profile_id!: string
	})
}
