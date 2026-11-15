package data

cloudflare_zero_trust_cws_basic_auth_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_basic_auth_credential")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// ID of the credential to retrieve
		credential_id?: string
		filter?: close({
			// Filter to credentials attached to this deployment
			deployment_id?: string

			// Sort direction (default: asc)
			// Available values: "asc", "desc".
			direction?: string

			// Field to order results by (default: created_at)
			// Available values: "username", "created_at", "updated_at".
			order?: string

			// Filter by username (case-insensitive substring match)
			username?: string
		})

		// ID of the credential to retrieve
		id?:         string
		updated_at?: string

		// Login presented by the client. Printable ASCII only, excluding space and
		// colon (RFC 7617 forbids a colon in the user-id).
		username?: string
	})
}
