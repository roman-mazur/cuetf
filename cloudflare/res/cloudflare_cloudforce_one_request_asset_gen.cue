package res

#cloudflare_cloudforce_one_request_asset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request_asset")
	close({
		// Identifier.
		account_id!: string

		// Defines the asset creation time.
		created?: string

		// Asset description.
		description?: string

		// Asset file type.
		file_type?: string

		// Asset ID.
		id?: number

		// Asset name.
		name?: string

		// Page number of results.
		page!: number

		// Number of results per page.
		per_page!: number

		// UUID.
		request_id!: string

		// Asset file to upload.
		source?: string
	})
}
