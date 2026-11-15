package res

cloudflare_zero_trust_cws_basic_auth_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_basic_auth_secret")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// ID of the parent credential
		credential_id!: string

		// Optional deactivation deadline (RFC 3339). Omit or null for no expiry.
		expires_at?: string

		// Server-assigned UUID
		id?: string

		// Password stored only as a one-way hash and never returned. Maximum 72 UTF-8 bytes.
		password?: string
	})
}
