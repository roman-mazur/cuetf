package res

#cloudflare_email_security_impersonation_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_impersonation_registry")
	close({
		// Identifier.
		account_id?:        string
		comments?:          string
		created_at?:        string
		directory_id?:      number
		directory_node_id?: number
		email!:             string

		// Impersonation registry entry identifier
		id?:             string
		is_email_regex!: bool
		modified_at?:    string
		name!:           string

		// Available values: "A1S_INTERNAL", "SNOOPY-CASB_OFFICE_365",
		// "SNOOPY-OFFICE_365", "SNOOPY-GOOGLE_DIRECTORY".
		provenance?: string
	})
}
