package data

#cloudflare_custom_page_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_custom_page_asset")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The unique name of the custom asset. Can only contain letters
		// (A-Z, a-z), numbers (0-9), and underscores (_).
		asset_name!: string

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

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
