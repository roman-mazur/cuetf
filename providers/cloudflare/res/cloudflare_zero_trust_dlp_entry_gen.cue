package res

cloudflare_zero_trust_dlp_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_entry")
	close({
		account_id!: string

		// For `type: exact_data`: Only applies to custom word lists.
		// Determines if the words should be matched in a case-sensitive manner
		// Cannot be set to false if secret is true
		case_sensitive?: bool
		confidence?: close({
			// Indicates whether this entry has AI remote service validation.
			ai_context_available?: bool

			// Indicates whether this entry has any form of validation that is not an AI remote service.
			available?: bool
		})
		created_at?: string

		// For `type: predefined`: Whether this entry is deprecated for new use. This is
		// computed from the static catalog and
		// emitted only when true.
		deprecated?:  bool
		description?: string
		enabled!:     bool
		id?:          string
		name!:        string
		pattern!: close({
			regex!: string
		})
		profile_id?: string
		secret?:     bool

		// Available values: "custom", "predefined", "integration".
		type?: string
		profiles?: matchN(1, [close({
			id?:   string
			name?: string
		}), [...close({
			id?:   string
			name?: string
		})]])
		updated_at?: string

		// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
		upload_status?: string

		// Validators the new entry should reference, by id, at most 10.
		validator_ids?: [...string]

		// For `type: predefined`: A Predefined AI prompt classification topic entry.
		variant?: close({
			// For `type: PromptTopic`: A customer-facing explanation of what this
			// predefined AI prompt topic represents.
			//
			// For `type: General`: A customer-facing explanation of what this predefined entry represents.
			description?: string

			// Available values: "Intent", "Content".
			topic_type?: string

			// Available values: "PromptTopic", "General".
			type?: string
		})
		word_list?: [...string]
	})
}
