package data

cloudflare_zero_trust_cws_basic_auth_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_basic_auth_credentials")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Filter to credentials attached to this deployment
		deployment_id?: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to order results by (default: created_at)
		// Available values: "username", "created_at", "updated_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Server-assigned UUID
			id?: string

			// Login presented by the client. Printable ASCII only, excluding space and
			// colon (RFC 7617 forbids a colon in the user-id).
			username?:   string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Server-assigned UUID
			id?: string

			// Login presented by the client. Printable ASCII only, excluding space and
			// colon (RFC 7617 forbids a colon in the user-id).
			username?:   string
			updated_at?: string
		})]])

		// Filter by username (case-insensitive substring match)
		username?: string
	})
}
