package data

#cloudflare_zero_trust_access_custom_pages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_custom_pages")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// UUID.
			id?: string

			// Custom page name.
			name?: string

			// Custom page type.
			// Available values: "identity_denied", "forbidden".
			type?: string

			// UUID.
			uid?: string
		}), [...close({
			// UUID.
			id?: string

			// Custom page name.
			name?: string

			// Custom page type.
			// Available values: "identity_denied", "forbidden".
			type?: string

			// UUID.
			uid?: string
		})]])
	})
}
