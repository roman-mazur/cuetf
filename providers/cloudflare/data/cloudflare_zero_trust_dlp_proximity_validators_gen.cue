package data

cloudflare_zero_trust_dlp_proximity_validators: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_proximity_validators")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// A name for this validator, at most 50 characters.
			name?: string

			// What currently uses a validator. Deleting a validator that is still in use returns `409`, so
			// check this first.
			//
			// Read-only. A validator is attached or detached by updating the detection entry that uses it, not
			// by writing this back.
			referenced_by?: close({
				// The detection entries using this validator, ordered by name.
				entries?: matchN(1, [close({
					id?: string

					// The type of a detection entry.
					// Available values: "custom", "custom_prompt_topic", "predefined",
					// "integration", "exact_data", "document_fingerprint", "word_list".
					type?: string
					name?: string
				}), [...close({
					id?: string

					// The type of a detection entry.
					// Available values: "custom", "custom_prompt_topic", "predefined",
					// "integration", "exact_data", "document_fingerprint", "word_list".
					type?: string
					name?: string
				})]])

				// Number of detection entries this validator is attached to.
				entry_count?: number
			})
			id?: string

			// The words that raise confidence when found near a match.
			words?: matchN(1, [close({
				// How much a word contributes to a match's confidence when it is found nearby.
				//
				// Separate from a profile's high/medium/low confidence threshold: this describes how telling the
				// word is, not how confident the resulting match is.
				// Available values: "strong", "moderate", "weak".
				weight?: string

				// The word or phrase to look for. Must contain 1–128 characters and is matched
				// case-insensitively.
				word?: string
			}), [...close({
				// How much a word contributes to a match's confidence when it is found nearby.
				//
				// Separate from a profile's high/medium/low confidence threshold: this describes how telling the
				// word is, not how confident the resulting match is.
				// Available values: "strong", "moderate", "weak".
				weight?: string

				// The word or phrase to look for. Must contain 1–128 characters and is matched
				// case-insensitively.
				word?: string
			})]])
			updated_at?: string
		}), [...close({
			created_at?: string

			// A name for this validator, at most 50 characters.
			name?: string

			// What currently uses a validator. Deleting a validator that is still in use returns `409`, so
			// check this first.
			//
			// Read-only. A validator is attached or detached by updating the detection entry that uses it, not
			// by writing this back.
			referenced_by?: close({
				// The detection entries using this validator, ordered by name.
				entries?: matchN(1, [close({
					id?: string

					// The type of a detection entry.
					// Available values: "custom", "custom_prompt_topic", "predefined",
					// "integration", "exact_data", "document_fingerprint", "word_list".
					type?: string
					name?: string
				}), [...close({
					id?: string

					// The type of a detection entry.
					// Available values: "custom", "custom_prompt_topic", "predefined",
					// "integration", "exact_data", "document_fingerprint", "word_list".
					type?: string
					name?: string
				})]])

				// Number of detection entries this validator is attached to.
				entry_count?: number
			})
			id?: string

			// The words that raise confidence when found near a match.
			words?: matchN(1, [close({
				// How much a word contributes to a match's confidence when it is found nearby.
				//
				// Separate from a profile's high/medium/low confidence threshold: this describes how telling the
				// word is, not how confident the resulting match is.
				// Available values: "strong", "moderate", "weak".
				weight?: string

				// The word or phrase to look for. Must contain 1–128 characters and is matched
				// case-insensitively.
				word?: string
			}), [...close({
				// How much a word contributes to a match's confidence when it is found nearby.
				//
				// Separate from a profile's high/medium/low confidence threshold: this describes how telling the
				// word is, not how confident the resulting match is.
				// Available values: "strong", "moderate", "weak".
				weight?: string

				// The word or phrase to look for. Must contain 1–128 characters and is matched
				// case-insensitively.
				word?: string
			})]])
			updated_at?: string
		})]])
	})
}
