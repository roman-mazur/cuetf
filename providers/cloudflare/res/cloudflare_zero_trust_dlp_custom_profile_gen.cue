package res

#cloudflare_zero_trust_dlp_custom_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_custom_profile")
	close({
		account_id?:         string
		ai_context_enabled?: bool

		// Related DLP policies will trigger when the match count exceeds
		// the number set.
		allowed_match_count?:  number
		confidence_threshold?: string

		// When the profile was created.
		created_at?: string

		// Data class IDs to associate with the profile.
		data_classes?: [...string]

		// Data tag IDs to associate with the profile.
		data_tags?: [...string]

		// The description of the profile.
		description?: string

		// The id of the profile (uuid).
		id?:          string
		name!:        string
		ocr_enabled?: bool

		// Whether this profile can be accessed by anyone.
		open_access?: bool

		// Available values: "custom", "predefined", "integration".
		type?: string

		// When the profile was lasted updated.
		updated_at?: string

		// Sensitivity levels to associate with the profile.
		sensitivity_levels?: matchN(1, [close({
			group_id!: string
			level_id!: string
		}), [...close({
			group_id!: string
			level_id!: string
		})]])

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
	})
}
