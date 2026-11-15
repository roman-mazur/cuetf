package data

cloudflare_zero_trust_cws_domain_acls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_domain_acls")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Filter to domain ACLs attached to this deployment
		deployment_id?: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by domain ACL name (case-insensitive substring match)
		name?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Action applied when no entry matches the request domain
			// Available values: "ALLOW", "BLOCK".
			default_action?: string

			// Per-domain action overrides. Each domain appears at most once.
			entries?: matchN(1, [close({
				// Per-domain decision overriding the parent ACL's default_action
				// Available values: "ALLOW", "BLOCK".
				action?: string

				// Hostname or domain pattern, capped at 255 UTF-8 bytes
				domain?: string
			}), [...close({
				// Per-domain decision overriding the parent ACL's default_action
				// Available values: "ALLOW", "BLOCK".
				action?: string

				// Hostname or domain pattern, capped at 255 UTF-8 bytes
				domain?: string
			})]])

			// Server-assigned UUID
			id?: string

			// Human-readable name; unique per account
			name?:       string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Action applied when no entry matches the request domain
			// Available values: "ALLOW", "BLOCK".
			default_action?: string

			// Per-domain action overrides. Each domain appears at most once.
			entries?: matchN(1, [close({
				// Per-domain decision overriding the parent ACL's default_action
				// Available values: "ALLOW", "BLOCK".
				action?: string

				// Hostname or domain pattern, capped at 255 UTF-8 bytes
				domain?: string
			}), [...close({
				// Per-domain decision overriding the parent ACL's default_action
				// Available values: "ALLOW", "BLOCK".
				action?: string

				// Hostname or domain pattern, capped at 255 UTF-8 bytes
				domain?: string
			})]])

			// Server-assigned UUID
			id?: string

			// Human-readable name; unique per account
			name?:       string
			updated_at?: string
		})]])
	})
}
