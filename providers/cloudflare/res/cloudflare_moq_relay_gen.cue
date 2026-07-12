package res

cloudflare_moq_relay: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_moq_relay")
	close({
		// Cloudflare account identifier.
		account_id!: string

		// upstreams and lingering_subscribe are mutually exclusive.
		config?: close({
			lingering_subscribe?: close({
				enabled?: bool

				// Relay-level ceiling on lingering subscribe timeout (ms). Default 30000.
				max_timeout_ms?: number
			})

			// Upstreams are external MOQT server publishers that a relay falls back
			// to when it has no local publisher for a requested namespace/track.
			upstreams?: close({
				enabled?: bool

				// Ordered list of upstream MOQT server publishers. Each entry is an
				// object (not a bare string) so per-upstream configuration can be
				// added in the future without another breaking change.
				upstreams?: matchN(1, [close({
					// Upstream MOQT server publisher URL.
					url?: string
				}), [...close({
					// Upstream MOQT server publisher URL.
					url?: string
				})]])
			})
		})
		created?: string

		// Server-generated unique identifier (32 hex chars).
		id?:       string
		modified?: string

		// Human-readable name for the relay.
		name!: string

		// "connected" when active, omitted otherwise.
		// Available values: "connected".
		status?: string

		// Full access token (publish + subscribe). Treat as sensitive.
		token_publish_subscribe?: string

		// Subscribe-only token. Treat as sensitive.
		token_subscribe?: string

		// Server-generated unique identifier (32 hex chars).
		uid?: string
	})
}
