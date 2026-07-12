package data

cloudflare_moq_relays: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_moq_relays")
	close({
		// Cloudflare account identifier.
		account_id!: string

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

		// Max items to fetch, default: 1000
		max_items?: number

		// Maximum number of relays to return per page.
		per_page?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created?:  string
			id?:       string
			modified?: string
			name?:     string
			uid?:      string
		}), [...close({
			created?:  string
			id?:       string
			modified?: string
			name?:     string
			uid?:      string
		})]])
	})
}
