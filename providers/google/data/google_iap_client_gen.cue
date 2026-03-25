package data

#google_iap_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_iap_client")
	close({
		// Identifier of the brand to which this client
		// is attached to. The format is
		// 'projects/{project_number}/brands/{brand_id}'.
		brand!: string

		// Output only. Unique identifier of the OAuth client.
		client_id!: string

		// Human-friendly name given to the OAuth client.
		display_name?: string
		id?:           string

		// Output only. Client secret of the OAuth client.
		secret?: string
	})
}
