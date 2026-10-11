package data

cloudflare_workers_kv_namespaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_kv_namespaces")
	close({
		// ID of the Cloudflare account that owns the Workers KV namespaces.
		account_id?: string

		// Sort namespaces in ascending (`asc`) or descending (`desc`) order.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Namespace field to sort by (`id` or `title`).
		// Available values: "id", "title".
		order?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// ID of the Workers KV namespace.
			id?: string

			// Specify the jurisdiction to restrict the KV namespace to durably store data
			// within. Can only be set at namespace creation time.
			// Available values: "eu", "fedramp", "us".
			jurisdiction?: string

			// True if keys written on the URL will be URL-decoded before storing. For
			// example, if set to "true", a key written on the URL as "%3F" will be stored
			// as "?".
			supports_url_encoding?: bool

			// Human-readable string name for a Workers KV namespace.
			title?: string
		}), [...close({
			// ID of the Workers KV namespace.
			id?: string

			// Specify the jurisdiction to restrict the KV namespace to durably store data
			// within. Can only be set at namespace creation time.
			// Available values: "eu", "fedramp", "us".
			jurisdiction?: string

			// True if keys written on the URL will be URL-decoded before storing. For
			// example, if set to "true", a key written on the URL as "%3F" will be stored
			// as "?".
			supports_url_encoding?: bool

			// Human-readable string name for a Workers KV namespace.
			title?: string
		})]])
	})
}
