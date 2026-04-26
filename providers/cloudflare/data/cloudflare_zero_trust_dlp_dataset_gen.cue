package data

#cloudflare_zero_trust_dlp_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_dataset")
	close({
		account_id?:     string
		case_sensitive?: bool
		created_at?:     string
		dataset_id!:     string

		// The description of the dataset.
		description?:      string
		encoding_version?: number
		id?:               string
		name?:             string
		num_cells?:        number
		secret?:           bool

		// Available values: "empty", "uploading", "pending",
		// "processing", "failed", "complete".
		status?: string

		// Stores when the dataset was last updated.
		//
		// This includes name or description changes as well as uploads.
		updated_at?: string
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
	})
}
