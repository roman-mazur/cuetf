package data

cloudflare_zero_trust_cws_basic_auth_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_basic_auth_secret")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// ID of the parent credential
		credential_id!: string

		// Optional RFC 3339 expiration time. Omit for no expiration.
		expires_at?: string
		filter?: close({
			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Field to order results by (default: created_at)
			// Available values: "created_at".
			order?: string
		})

		// ID of the secret to retrieve
		id?: string

		// ID of the secret to retrieve
		secret_id?: string
	})
}
