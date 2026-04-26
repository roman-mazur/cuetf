package data

#cloudflare_custom_page_assets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_custom_page_assets")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// A short description of the custom asset.
			description?: string

			// The unique name of the custom asset. Can only contain letters
			// (A-Z, a-z), numbers (0-9), and underscores (_).
			id?:           string
			last_updated?: string

			// The unique name of the custom asset. Can only contain letters
			// (A-Z, a-z), numbers (0-9), and underscores (_).
			name?: string

			// The size of the asset content in bytes.
			size_bytes?: number

			// The URL where the asset content is fetched from.
			url?: string
		}), [...close({
			// A short description of the custom asset.
			description?: string

			// The unique name of the custom asset. Can only contain letters
			// (A-Z, a-z), numbers (0-9), and underscores (_).
			id?:           string
			last_updated?: string

			// The unique name of the custom asset. Can only contain letters
			// (A-Z, a-z), numbers (0-9), and underscores (_).
			name?: string

			// The size of the asset content in bytes.
			size_bytes?: number

			// The URL where the asset content is fetched from.
			url?: string
		})]])
	})
}
