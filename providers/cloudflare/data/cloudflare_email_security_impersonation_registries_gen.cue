package data

cloudflare_email_security_impersonation_registries: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_impersonation_registries")
	close({
		// Identifier.
		account_id?: string

		// The sorting direction.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to sort by.
		// Available values: "name", "email", "created_at".
		order?: string

		// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
		// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
		provenance?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			comments?: string

			// Impersonation registry entry identifier
			id?:         string
			created_at?: string

			// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
			// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
			provenance?:        string
			directory_id?:      number
			directory_node_id?: number
			email?:             string
			is_email_regex?:    bool
			modified_at?:       string
			name?:              string
		}), [...close({
			comments?: string

			// Impersonation registry entry identifier
			id?:         string
			created_at?: string

			// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
			// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
			provenance?:        string
			directory_id?:      number
			directory_node_id?: number
			email?:             string
			is_email_regex?:    bool
			modified_at?:       string
			name?:              string
		})]])

		// Search term for filtering records. Behavior may change.
		search?: string
	})
}
