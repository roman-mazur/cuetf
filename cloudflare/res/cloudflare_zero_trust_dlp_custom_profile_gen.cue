package res

#cloudflare_zero_trust_dlp_custom_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_custom_profile")
	close({
		account_id!:         string
		ai_context_enabled?: bool

		// Related DLP policies will trigger when the match count exceeds
		// the number set.
		allowed_match_count?: number

		// When the profile was created.
		created_at?:           string
		confidence_threshold?: string

		// The description of the profile.
		description?: string

		// Entries from other profiles (e.g. pre-defined Cloudflare
		// profiles, or your Microsoft Information Protection profiles).
		shared_entries?: matchN(1, [close({
			enabled!:  bool
			entry_id!: string

			// Available values: "custom", "predefined", "integration",
			// "exact_data", "document_fingerprint".
			entry_type!: string
		}), [...close({
			enabled!:  bool
			entry_id!: string

			// Available values: "custom", "predefined", "integration",
			// "exact_data", "document_fingerprint".
			entry_type!: string
		})]])

		// The id of the profile (uuid).
		id?: string

		// Whether this profile can be accessed by anyone.
		open_access?: bool

		// Available values: "custom", "predefined", "integration".
		type?: string

		// When the profile was lasted updated.
		updated_at?:  string
		name!:        string
		ocr_enabled?: bool
	})
}
