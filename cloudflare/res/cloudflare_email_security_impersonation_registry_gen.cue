package res

#cloudflare_email_security_impersonation_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_impersonation_registry")
	close({
		account_id!:        string
		comments?:          string
		created_at?:        string
		directory_id?:      number
		directory_node_id?: number
		email!:             string
		id?:                number
		is_email_regex!:    bool
		last_modified?:     string
		name!:              string
		provenance?:        string
	})
}
