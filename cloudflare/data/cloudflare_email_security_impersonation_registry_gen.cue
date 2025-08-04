package data

#cloudflare_email_security_impersonation_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_impersonation_registry")
	close({
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// The field to sort by.
			// Available values: "name", "email", "created_at".
			order?: string

			// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
			// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
			provenance?: string

			// Allows searching in multiple properties of a record
			// simultaneously.
			// This parameter is intended for human users, not automation. Its
			// exact
			// behavior is intentionally left unspecified and is subject to
			// change
			// in the future.
			search?: string
		})

		// Account Identifier
		account_id!:        string
		comments?:          string
		created_at?:        string
		directory_id?:      number
		directory_node_id?: number
		display_name_id?:   number
		email?:             string
		id?:                number
		is_email_regex?:    bool
		last_modified?:     string
		name?:              string
		provenance?:        string
	})
}
