package data

cloudflare_workers_kv_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workers_kv_namespace")
	close({
		// ID of the Cloudflare account that owns the Workers KV namespaces.
		account_id?: string
		filter?: close({
			// Sort namespaces in ascending (`asc`) or descending (`desc`) order.
			// Available values: "asc", "desc".
			direction?: string

			// Namespace field to sort by (`id` or `title`).
			// Available values: "id", "title".
			order?: string
		})

		// ID of the Workers KV namespace.
		id?: string

		// Specify the jurisdiction to restrict the KV namespace to durably store data
		// within. Can only be set at namespace creation time.
		// Available values: "eu", "fedramp", "us".
		jurisdiction?: string

		// The mode of the Workers KV namespace. Specify `instant` when creating a
		// namespace to create a KV Instant namespace. Omit this field when creating a
		// namespace to create a classic namespace. Currently, `instant` is the only
		// supported explicit value.
		// Available values: "instant".
		mode?: string

		// ID of the Workers KV namespace.
		namespace_id?: string

		// True if keys written on the URL will be URL-decoded before storing. For
		// example, if set to "true", a key written on the URL as "%3F" will be stored
		// as "?".
		supports_url_encoding?: bool

		// Human-readable string name for a Workers KV namespace.
		title?: string
	})
}
