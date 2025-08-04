package data

#cloudflare_zero_trust_dlp_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_dataset")
	close({
		account_id!:     string
		case_sensitive?: bool
		columns?: matchN(1, [close({
			entry_id?:      string
			header_name?:   string
			num_cells?:     number
			upload_status?: string
		}), [...close({
			entry_id?:      string
			header_name?:   string
			num_cells?:     number
			upload_status?: string
		})]])
		created_at?:       string
		dataset_id!:       string
		description?:      string
		encoding_version?: number
		id?:               string
		name?:             string
		uploads?: matchN(1, [close({
			num_cells?: number
			status?:    string
			version?:   number
		}), [...close({
			num_cells?: number
			status?:    string
			version?:   number
		})]])
		num_cells?:  number
		secret?:     bool
		status?:     string
		updated_at?: string
	})
}
