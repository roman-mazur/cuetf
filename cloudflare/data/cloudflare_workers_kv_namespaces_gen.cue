package data

#cloudflare_workers_kv_namespaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_kv_namespaces")
	close({
		// Identifier.
		account_id!: string

		// Direction to order namespaces.
		// Available values: "asc", "desc".
		direction?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Namespace identifier tag.
			id?: string

			// True if keys written on the URL will be URL-decoded before
			// storing. For example, if set to "true", a key written on the
			// URL as "%3F" will be stored as "?".
			supports_url_encoding?: bool

			// A human-readable string name for a Namespace.
			title?: string
		}), [...close({
			// Namespace identifier tag.
			id?: string

			// True if keys written on the URL will be URL-decoded before
			// storing. For example, if set to "true", a key written on the
			// URL as "%3F" will be stored as "?".
			supports_url_encoding?: bool

			// A human-readable string name for a Namespace.
			title?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to order results by.
		// Available values: "id", "title".
		order?: string
	})
}
