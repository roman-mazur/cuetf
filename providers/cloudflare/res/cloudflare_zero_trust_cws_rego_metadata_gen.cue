package res

cloudflare_zero_trust_cws_rego_metadata: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_rego_metadata")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string
		data!:       string

		// Server-assigned UUID
		id?: string

		// Unique Rego import path in the form metadata.<segment>, with one alphanumeric
		// or underscore segment. Reference it as data.<import_path>.
		import_path!: string

		// Name of the rego metadata document (unique per account)
		name!:       string
		updated_at?: string
	})
}
