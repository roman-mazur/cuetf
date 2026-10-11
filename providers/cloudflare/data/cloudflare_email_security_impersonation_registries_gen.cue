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
			// Optional note describing the entry.
			comments?:   string
			created_at?: string

			// Identifier of the directory the entry was synced from, when directory-synced.
			directory_id?: number

			// Identifier of the directory node the entry was synced from, when directory-synced.
			directory_node_id?: number

			// Email address (or pattern) of the protected identity.
			email?: string

			// Impersonation registry entry identifier
			id?: string

			// Whether `email` is a regular expression instead of a literal address.
			is_email_regex?: bool

			// Display name of the protected identity.
			name?:        string
			modified_at?: string

			// Source the entry was created from.
			// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
			// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
			provenance?: string
		}), [...close({
			// Optional note describing the entry.
			comments?:   string
			created_at?: string

			// Identifier of the directory the entry was synced from, when directory-synced.
			directory_id?: number

			// Identifier of the directory node the entry was synced from, when directory-synced.
			directory_node_id?: number

			// Email address (or pattern) of the protected identity.
			email?: string

			// Impersonation registry entry identifier
			id?: string

			// Whether `email` is a regular expression instead of a literal address.
			is_email_regex?: bool

			// Display name of the protected identity.
			name?:        string
			modified_at?: string

			// Source the entry was created from.
			// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
			// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
			provenance?: string
		})]])

		// Search term for filtering records. Behavior may change.
		search?: string
	})
}
