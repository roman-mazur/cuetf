package data

cloudflare_email_security_impersonation_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_impersonation_registry")
	close({
		// Identifier.
		account_id?: string

		// Optional note describing the entry.
		comments?:   string
		created_at?: string

		// Identifier of the directory the entry was synced from, when directory-synced.
		directory_id?: number

		// Identifier of the directory node the entry was synced from, when directory-synced.
		directory_node_id?: number

		// Email address (or pattern) of the protected identity.
		email?: string
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

		// Whether `email` is a regular expression instead of a literal address.
		is_email_regex?: bool
		modified_at?:    string

		// Display name of the protected identity.
		name?: string

		// Source the entry was created from.
		// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
		// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
		provenance?: string
	})
}
