package data

cloudflare_zero_trust_dlp_custom_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_custom_entry")
	close({
		account_id?: string

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
		deprecated?: bool

		// For `type: custom_prompt_topic`: The optional description of the custom prompt topic entry.
		//
		// For `type: exact_data`: The optional description of the exact data entry.
		//
		// For `type: document_fingerprint`: The optional description of the document fingerprint entry.
		description?: string
		enabled?:     bool
		entry_id!:    string
		id?:          string
		name?:        string
		pattern?: close({
			regex?: string
		})
		profile_id?: string
		profiles?: matchN(1, [close({
			id?:   string
			name?: string
		}), [...close({
			id?:   string
			name?: string
		})]])
		secret?: bool

		// Available values: "custom", "custom_prompt_topic", "predefined",
		// "integration", "exact_data", "document_fingerprint", "word_list".
		type?:       string
		updated_at?: string

		// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
		upload_status?: string

		// For `type: custom`: Validators this entry references, by id, at most 10. An
		// empty list means the entry
		// references none.
		//
		// Returned by the entry endpoints. Not returned on entries embedded in other responses, such
		// as profiles.
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
