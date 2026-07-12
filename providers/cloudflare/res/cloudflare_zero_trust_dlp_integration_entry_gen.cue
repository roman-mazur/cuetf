package res

cloudflare_zero_trust_dlp_integration_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_integration_entry")
	close({
		account_id!: string

		// Only applies to custom word lists.
		// Determines if the words should be matched in a case-sensitive manner
		// Cannot be set to false if secret is true
		case_sensitive?: bool
		confidence?: close({
			// Indicates whether this entry has AI remote service validation.
			ai_context_available?: bool

			// Indicates whether this entry has any form of validation that is not an AI remote service.
			available?: bool
		})
		created_at?:  string
		description?: string
		enabled!:     bool
		entry_id!:    string
		id?:          string
		name?:        string

		// This field is not used as the owning profile.
		// For predefined entries it is already set to a predefined profile.
		profile_id?: string
		pattern?: close({
			regex?: string
		})
		secret?: bool

		// Available values: "custom", "custom_prompt_topic", "predefined",
		// "integration", "exact_data", "document_fingerprint", "word_list".
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

		// A Predefined AI prompt classification topic entry.
		variant?: close({
			// A customer-facing explanation of what this predefined AI prompt topic represents.
			description?: string

			// Available values: "Intent", "Content".
			topic_type?: string

			// Available values: "PromptTopic", "General".
			type?: string
		})
		word_list?: string
	})
}
