package data

#cloudflare_zero_trust_dlp_predefined_entries: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_predefined_entries")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Only applies to custom word lists.
			// Determines if the words should be matched in a case-sensitive
			// manner
			// Cannot be set to false if secret is true
			case_sensitive?: bool
			created_at?:     string
			confidence?: close({
				// Indicates whether this entry has AI remote service validation.
				ai_context_available?: bool

				// Indicates whether this entry has any form of validation that is
				// not an AI remote service.
				available?: bool
			})
			enabled?: bool
			id?:      string
			name?:    string

			// Available values: "custom", "predefined", "integration",
			// "exact_data", "document_fingerprint", "word_list".
			type?:       string
			profile_id?: string
			pattern?: close({
				regex?: string
			})
			secret?:     bool
			updated_at?: string
			word_list?:  string
			variant?: close({
				description?: string

				// Available values: "Intent", "Content".
				topic_type?: string

				// Available values: "PromptTopic".
				type?: string
			})
		}), [...close({
			// Only applies to custom word lists.
			// Determines if the words should be matched in a case-sensitive
			// manner
			// Cannot be set to false if secret is true
			case_sensitive?: bool
			created_at?:     string
			confidence?: close({
				// Indicates whether this entry has AI remote service validation.
				ai_context_available?: bool

				// Indicates whether this entry has any form of validation that is
				// not an AI remote service.
				available?: bool
			})
			enabled?: bool
			id?:      string
			name?:    string

			// Available values: "custom", "predefined", "integration",
			// "exact_data", "document_fingerprint", "word_list".
			type?:       string
			profile_id?: string
			pattern?: close({
				regex?: string
			})
			secret?:     bool
			updated_at?: string
			word_list?:  string
			variant?: close({
				description?: string

				// Available values: "Intent", "Content".
				topic_type?: string

				// Available values: "PromptTopic".
				type?: string
			})
		})]])
	})
}
