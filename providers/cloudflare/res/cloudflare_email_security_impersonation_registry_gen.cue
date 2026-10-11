package res

cloudflare_email_security_impersonation_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_impersonation_registry")
	close({
		// Identifier.
		account_id!: string

		// Optional note describing the entry.
		comments?:   string
		created_at?: string

		// Identifier of the directory the entry was synced from, when directory-synced.
		directory_id?: number

		// Identifier of the directory node the entry was synced from, when directory-synced.
		directory_node_id?: number

		// Email address (or pattern) of the protected identity.
		email!: string

		// Impersonation registry entry identifier
		id?: string

		// Whether `email` is a regular expression instead of a literal address.
		is_email_regex!: bool
		modified_at?:    string

		// Display name of the protected identity.
		name!: string

		// Source the entry was created from.
		// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
		// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
		provenance?: string
	})
}
