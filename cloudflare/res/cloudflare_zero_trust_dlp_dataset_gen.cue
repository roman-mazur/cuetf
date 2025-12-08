package res

#cloudflare_zero_trust_dlp_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_dataset")
	close({
		account_id!: string

		// Only applies to custom word lists.
		// Determines if the words should be matched in a case-sensitive
		// manner
		// Cannot be set to false if `secret` is true or undefined
		case_sensitive?: bool
		created_at?:     string
		columns?: matchN(1, [close({
			entry_id?:    string
			header_name?: string
			num_cells?:   number

			// Available values: "empty", "uploading", "pending",
			// "processing", "failed", "complete".
			upload_status?: string
		}), [...close({
			entry_id?:    string
			header_name?: string
			num_cells?:   number

			// Available values: "empty", "uploading", "pending",
			// "processing", "failed", "complete".
			upload_status?: string
		})]])

		// The description of the dataset.
		description?: string
		dataset_id?:  string

		// Dataset encoding version
		//
		// Non-secret custom word lists with no header are always version
		// 1.
		// Secret EDM lists with no header are version 1.
		// Multicolumn CSV with headers are version 2.
		// Omitting this field provides the default value 0, which is
		// interpreted
		// the same as 1.
		encoding_version?: number

		// Generate a secret dataset.
		//
		// If true, the response will include a secret to use with the EDM
		// encoder.
		// If false, the response has no secret and the dataset is
		// uploaded in plaintext.
		secret?:    bool
		id?:        string
		max_cells?: number
		name!:      string

		// Available values: "empty", "uploading", "pending",
		// "processing", "failed", "complete".
		status?:    string
		num_cells?: number

		// Stores when the dataset was last updated.
		//
		// This includes name or description changes as well as uploads.
		updated_at?: string

		// The version to use when uploading the dataset.
		version?: number
		dataset?: close({
			case_sensitive?: bool
			columns?: matchN(1, [close({
				entry_id?:    string
				header_name?: string
				num_cells?:   number

				// Available values: "empty", "uploading", "pending",
				// "processing", "failed", "complete".
				upload_status?: string
			}), [...close({
				entry_id?:    string
				header_name?: string
				num_cells?:   number

				// Available values: "empty", "uploading", "pending",
				// "processing", "failed", "complete".
				upload_status?: string
			})]])
			uploads?: matchN(1, [close({
				num_cells?: number

				// Available values: "empty", "uploading", "pending",
				// "processing", "failed", "complete".
				status?:  string
				version?: number
			}), [...close({
				num_cells?: number

				// Available values: "empty", "uploading", "pending",
				// "processing", "failed", "complete".
				status?:  string
				version?: number
			})]])

			// The description of the dataset.
			description?: string
			created_at?:  string

			// Available values: "empty", "uploading", "pending",
			// "processing", "failed", "complete".
			status?:           string
			encoding_version?: number
			id?:               string
			name?:             string
			num_cells?:        number

			// Stores when the dataset was last updated.
			//
			// This includes name or description changes as well as uploads.
			updated_at?: string
			secret?:     bool
		})
		uploads?: matchN(1, [close({
			num_cells?: number

			// Available values: "empty", "uploading", "pending",
			// "processing", "failed", "complete".
			status?:  string
			version?: number
		}), [...close({
			num_cells?: number

			// Available values: "empty", "uploading", "pending",
			// "processing", "failed", "complete".
			status?:  string
			version?: number
		})]])
	})
}
