package data

cloudflare_email_security_impersonation_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_impersonation_registry")
	close({
		// Identifier.
		account_id?:        string
		comments?:          string
		created_at?:        string
		directory_id?:      number
		directory_node_id?: number
		email?:             string
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// Field to sort by.
			// Available values: "name", "email", "created_at".
			order?: string

			// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
			// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
			provenance?: string

			// Search term for filtering records. Behavior may change.
			search?: string
		})

		// Impersonation registry entry identifier
		id?: string

		// Impersonation registry entry identifier
		impersonation_registry_id?: string
		is_email_regex?:            bool
		modified_at?:               string
		name?:                      string

		// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
		// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
		provenance?: string
	})
}
