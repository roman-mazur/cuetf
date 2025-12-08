package data

#cloudflare_zero_trust_dlp_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_entry")
	close({
		account_id!: string

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
		enabled?:  bool
		entry_id!: string
		id?:       string
		pattern?: close({
			regex?: string
		})
		name?:       string
		profile_id?: string
		profiles?: matchN(1, [close({
			id?:   string
			name?: string
		}), [...close({
			id?:   string
			name?: string
		})]])
		secret?: bool

		// Available values: "custom", "predefined", "integration",
		// "exact_data", "document_fingerprint", "word_list".
		type?:       string
		updated_at?: string
		word_list?:  string
		variant?: close({
			description?: string

			// Available values: "Intent", "Content".
			topic_type?: string

			// Available values: "PromptTopic".
			type?: string
		})
	})
}
