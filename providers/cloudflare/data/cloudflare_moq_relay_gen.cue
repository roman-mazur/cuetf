package data

cloudflare_moq_relay: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_moq_relay")
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
		filter?: close({
			// Sort order by `created`. When true, results are returned oldest-first
			// (ascending); otherwise newest-first (descending, the default).
			asc?: bool

			// Cursor for pagination. Returns relays created strictly after this
			// RFC 3339 timestamp (typically the `created` value of the last item
			// on the current page, to fetch the next page).
			created_after?: string

			// Cursor for pagination. Returns relays created strictly before this
			// RFC 3339 timestamp (typically the `created` value of the first item
			// on the current page, to fetch the previous page).
			created_before?: string

			// Maximum number of relays to return per page.
			per_page?: number
		})
		id?:       string
		modified?: string
		name?:     string
		relay_id?: string

		// "connected" when active, omitted otherwise.
		// Available values: "connected".
		status?: string
		uid?:    string
	})
}
