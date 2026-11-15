package data

cloudflare_zero_trust_cws_basic_auth_secrets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_basic_auth_secrets")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// ID of the parent credential
		credential_id!: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to order results by (default: created_at)
		// Available values: "created_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Optional RFC 3339 expiration time. Omit for no expiration.
			expires_at?: string

			// Server-assigned UUID
			id?: string
		}), [...close({
			created_at?: string

			// Optional RFC 3339 expiration time. Omit for no expiration.
			expires_at?: string

			// Server-assigned UUID
			id?: string
		})]])
	})
}
