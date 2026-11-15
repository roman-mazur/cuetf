package res

cloudflare_zero_trust_cws_domain_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_domain_acl")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Default action when no entry matches
		// Available values: "ALLOW", "BLOCK".
		default_action!: string

		// Domain entries for this ACL. Each domain must appear at most once.
		entries!: matchN(1, [close({
			// Per-domain decision overriding the parent ACL's default_action
			// Available values: "ALLOW", "BLOCK".
			action!: string

			// Hostname or domain pattern, capped at 255 UTF-8 bytes
			domain!: string
		}), [...close({
			// Per-domain decision overriding the parent ACL's default_action
			// Available values: "ALLOW", "BLOCK".
			action!: string

			// Hostname or domain pattern, capped at 255 UTF-8 bytes
			domain!: string
		})]])

		// Server-assigned UUID
		id?: string

		// Name of the domain ACL
		name!:       string
		updated_at?: string
	})
}
