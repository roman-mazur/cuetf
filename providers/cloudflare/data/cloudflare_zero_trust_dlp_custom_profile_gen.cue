package data

cloudflare_zero_trust_dlp_custom_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_custom_profile")
	close({
		account_id?:         string
		ai_context_enabled?: bool

		// For `type: custom`: Related DLP policies will trigger when the match count
		// exceeds the number set.
		allowed_match_count?: number

		// Available values: "low", "medium", "high", "very_high".
		confidence_threshold?: string

		// For `type: custom`: When the profile was created.
		created_at?: string

		// For `type: custom`: Data classes associated with this profile.
		data_classes?: [...string]

		// For `type: custom`: Data tags associated with this profile.
		data_tags?: [...string]

		// For `type: custom` or `type: integration`: The description of the profile.
		description?:    string
		id?:             string
		integration_id?: string

		// For `type: custom`: The name of the profile.
		//
		// For `type: predefined`: The name of the predefined profile.
		name?:        string
		ocr_enabled?: bool

		// For `type: predefined`: Whether this profile can be accessed by anyone.
		open_access?: bool
		profile_id!:  string

		// For `type: custom`: Sensitivity levels associated with this profile.
		sensitivity_levels?: matchN(1, [close({
			group_id?: string
			level_id?: string
		}), [...close({
			group_id?: string
			level_id?: string
		})]])
		shared_entries?: matchN(1, [close({
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
			pattern?: close({
				regex?: string
			})

			// For `type: custom_prompt_topic`: The optional description of the custom prompt topic entry.
			//
			// For `type: exact_data`: The optional description of the exact data entry.
			//
			// For `type: document_fingerprint`: The optional description of the document fingerprint entry.
			description?: string

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

			// Available values: "custom", "custom_prompt_topic", "predefined",
			// "integration", "exact_data", "document_fingerprint", "word_list".
			type?:    string
			enabled?: bool

			// For `type: custom`: Validators this entry references, by id, at most 10. An
			// empty list means the entry
			// references none.
			//
			// Returned by the entry endpoints. Not returned on entries embedded in other responses, such
			// as profiles.
			validator_ids?: [...string]
			id?:         string
			name?:       string
			profile_id?: string
			secret?:     bool
			updated_at?: string
			word_list?: [...string]
		}), [...close({
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
			pattern?: close({
				regex?: string
			})

			// For `type: custom_prompt_topic`: The optional description of the custom prompt topic entry.
			//
			// For `type: exact_data`: The optional description of the exact data entry.
			//
			// For `type: document_fingerprint`: The optional description of the document fingerprint entry.
			description?: string

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

			// Available values: "custom", "custom_prompt_topic", "predefined",
			// "integration", "exact_data", "document_fingerprint", "word_list".
			type?:    string
			enabled?: bool

			// For `type: custom`: Validators this entry references, by id, at most 10. An
			// empty list means the entry
			// references none.
			//
			// Returned by the entry endpoints. Not returned on entries embedded in other responses, such
			// as profiles.
			validator_ids?: [...string]
			id?:         string
			name?:       string
			profile_id?: string
			secret?:     bool
			updated_at?: string
			word_list?: [...string]
		})]])

		// Available values: "custom", "predefined", "integration".
		type?: string

		// For `type: custom`: When the profile was lasted updated.
		updated_at?: string
	})
}
