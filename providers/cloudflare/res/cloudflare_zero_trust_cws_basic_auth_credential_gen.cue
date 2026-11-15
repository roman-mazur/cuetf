package res

cloudflare_zero_trust_cws_basic_auth_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_basic_auth_credential")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Server-assigned UUID
		id?:         string
		updated_at?: string

		// Login presented by the client. Printable ASCII only, excluding space and colon.
		username!: string
	})
}
