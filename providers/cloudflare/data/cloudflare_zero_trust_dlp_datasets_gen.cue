package data

cloudflare_zero_trust_dlp_datasets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_datasets")
	close({
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			case_sensitive?: bool
			columns?: matchN(1, [close({
				entry_id?: string

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				upload_status?: string
				header_name?:   string
				num_cells?:     number
			}), [...close({
				entry_id?: string

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				upload_status?: string
				header_name?:   string
				num_cells?:     number
			})]])

			// The description of the dataset.
			description?: string
			created_at?:  string
			uploads?: matchN(1, [close({
				num_cells?: number

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				status?:  string
				version?: number
			}), [...close({
				num_cells?: number

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				status?:  string
				version?: number
			})]])

			// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
			status?: string

			// Stores when the dataset was last updated.
			//
			// This includes name or description changes as well as uploads.
			updated_at?:       string
			encoding_version?: number
			id?:               string
			name?:             string
			num_cells?:        number
			secret?:           bool
		}), [...close({
			case_sensitive?: bool
			columns?: matchN(1, [close({
				entry_id?: string

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				upload_status?: string
				header_name?:   string
				num_cells?:     number
			}), [...close({
				entry_id?: string

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				upload_status?: string
				header_name?:   string
				num_cells?:     number
			})]])

			// The description of the dataset.
			description?: string
			created_at?:  string
			uploads?: matchN(1, [close({
				num_cells?: number

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				status?:  string
				version?: number
			}), [...close({
				num_cells?: number

				// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
				status?:  string
				version?: number
			})]])

			// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
			status?: string

			// Stores when the dataset was last updated.
			//
			// This includes name or description changes as well as uploads.
			updated_at?:       string
			encoding_version?: number
			id?:               string
			name?:             string
			num_cells?:        number
			secret?:           bool
		})]])
	})
}
